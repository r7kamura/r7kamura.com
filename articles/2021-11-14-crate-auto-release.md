---
title: パッケージリリースの自動化
---

package.jsonなどのファイルに記述しているバージョンを変更したとき、GitHubに次の処理をしてもらいたい。

1. Gitのタグを発行する
2. パッケージレジストリに登録する
3. GitHubのリリースを発行する
4. GitHubのリリースにビルドしたバイナリを紐付ける

RustのCrateを例に、これを実現する方法の一つを説明する。なお、この処理は次のリポジトリで実際に利用されているので、適宜参考にされたい。

- <https://github.com/r7kamura/imgurian>

## タグの発行

mainブランチに変更がpushされたとき、直前のcommitと今回のcommitとでバージョンに差異があれば、GitHub APIで新しいタグを発行する、という作戦でいく。

[salsify/action-detect-and-tag-new-version](https://github.com/salsify/action-detect-and-tag-new-version)というGitHub Actionを利用すると、直前のcommitと今回のcommitとでバージョンに差異があるかを簡単に調べられる。このGitHub Actionはバージョンを調べるコマンドを指定できるように出来ているので、用途に応じて柔軟に対応できる。では、どのようなコマンドを指定すると良いのか。

Crateでは、Cargo.tomlというファイルにバージョンを記述することになっているから、ここからバージョンの値を取り出すコマンドを用意すると良い。GitHub Actionの提供するUbuntu 20.04の実行環境では、追加でインストールしなくとも、`cargo` と `jq` を利用できる。`cargo read-manifest` というコマンドを使うと、JSON形式でこのファイルの内容を出力できる。`jq` を使うことで、JSON形式の文字列から任意の値を取り出せる。これを組み合わせることで、現在のバージョンの値を取り出すコマンドを導ける。

タグを発行する処理は、[mathieudutour/github-tag-action](https://github.com/mathieudutour/github-tag-action)というGitHubを利用すると、簡単に実現できる。実はバージョン検出に利用した前述のGitHub Actionもタグを発行してくれる機能を備えているが、あちらは `git` コマンドを利用してタグを発行するのに対し、こちらはGitHub APIを利用してタグを発行する。GitHub Actionsは、デフォルトの権限で何かを変更しても、他のWorkflowを起動しないように出来ている。よって今回のケースでは、より強い権限でタグ発行する必要があるため、Personal Access Tokenを指定しながらGitHub APIを利用してタグを発行する。

```yaml
name: tag

on:
  push:
    branches:
      - main
    paths:
      - Cargo.toml

jobs:
  tag:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
        with:
          fetch-depth: 2
      - uses: salsify/action-detect-and-tag-new-version@v2
        id: detect_tag
        with:
          create-tag: false
          version-command: cargo read-manifest | jq -r .version
      - uses: mathieudutour/github-tag-action@v5.6
        with:
          custom_tag: ${{ steps.detect_tag.outputs.current-version }}
          github_token: ${{ secrets.PERSONAL_ACCESS_TOKEN }}
        if: ${{ steps.detect_tag.outputs.previous-version != steps.detect_tag.outputs.current-version }}
```

なお、上の例では無駄に処理を行わないように配慮して `paths` や `if` を利用しているが、mathieudutour/github-tag-actionは既に同名のタグがあれば新たにタグを発行しないようになっているので、これらの条件分岐は無くても動く。

## リリースの作成、パッケージレジストリへの登録

タグが発行されたときに、リリース作成用のGitHub Actionと、パッケージレジストリへの登録用のコマンドを実行する、という作戦でいく。

リリースの作成には、[softprops/action-gh-release](https://github.com/softprops/action-gh-release)を使う。但し、これも他のWorkflowを起動してほしいので、Personal Access Tokenを指定する。

Crateでは、`cargo publish` を実行することで、Crateのパッケージレジストリである [crate.io](https://crates.io/) に新しいバージョンを登録できる。先述した通り、GitHub Actionsでは `cargo` コマンドが簡単に利用できるので、crate.io のアクセストークンを指定しながらこれを実行するだけで良い。

```yaml
name: release

on:
  push:
    tags:
      - "v*.*.*"

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: softprops/action-gh-release@v1
        env:
          GITHUB_TOKEN: ${{ secrets.PERSONAL_ACCESS_TOKEN }}
      - run: cargo publish
        env:
          CARGO_REGISTRY_TOKEN: ${{ secrets.CARGO_REGISTRY_TOKEN }}
```

## バイナリの紐付け

リリースが作成されたときに、実行可能なバイナリをGitHub Actionでクロスコンパイルし、既存のリリースにAssetとして紐付ける (簡単にダウンロードできるようにする) という作戦でいく。

RustのCrateの場合、これは[rust-build/rust-build.action](https://github.com/rust-build/rust-build.action)を使うと全部やってくれる。GitHub Actionsのmatrixの機能を使いながら、それぞれの環境向けにこのActionを実行する。下に載せているのは、MacOS、Windows、Linux向けにクロスコンパイルしている例。

```yaml
name: build

on:
  release:
    types:
      - created

jobs:
  build:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        target:
          - x86_64-apple-darwin
          - x86_64-pc-windows-gnu
          - x86_64-unknown-linux-musl
    steps:
      - uses: actions/checkout@v2
      - uses: rust-build/rust-build.action@v1.2.1
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          RUSTTARGET: ${{ matrix.target }}
```

## その他

何度か先述したように、デフォルトの権限設定ではWorkflowから他のWorkflowを起動できないという制約があるため、依存関係を持つ1つのWorkflowにこれらの処理を全てまとめることも考えた。しかし、一部処理だけ手動で行う場合にも途中から処理が実行されてほしい、　また何かエラーがあった場合でも途中からワークフローを手動実行できるようにしたいという点を考慮し、複数のWorkflowに分けることにした。
