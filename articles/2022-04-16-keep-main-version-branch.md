---
title: GitHub Actionsでメインバージョンのブランチ維持
---

[keep-main-version-branch](https://github.com/r7kamura/workflows/blob/main/.github/workflows/keep-main-version-branch.yml)というGitHub Actions Workflowを用意したので、これについて説明しておく。

GitHub Actionsを公開するときの文化として、v2やv3のように、メインバージョンの最新版にアクセスできるGitのrefを提供しておくという慣習がある。例えば、コードをcheckoutしてくるための公式GitHub Action [actions/checkout](https://github.com/actions/checkout)では、`uses: actions/checkout@v3` のように利用しろと説明されている。v3という名前付きのrefをつくる方法としては、v3ブランチをつくる、またはv3タグをつくる、という二種類の方法がある。

自分も次のように幾つかのGitHub Actionsを保守しているが、このメインバージョンのrefを維持する作業がリリースのたびに面倒だった。これを自動化したかったので、今回のWorkflowを用意した。

- <https://github.com/r7kamura/rubocop-problem-matchers-action>
- <https://github.com/r7kamura/rust-problem-matchers>
- <https://github.com/r7kamura/weneedfeed-action>

使い方は次のような感じで、リポジトリにこういう感じでWorkflowを仕込んでおくと、(workflowの実行権限を持つ者から) タグがPushされたときに、このWorkflowが起動してv3のようなブランチが最新化されるという仕組み。

```yaml
name: branch

on:
  push:
    tags:
      - "v*.*.*"
  workflow_dispatch:

permissions:
  content: write

jobs:
  release:
    uses: r7kamura/workflows/.github/workflows/keep-main-version-branch.yml@main
```

実装は次のような形になった。

```yaml
on:
  workflow_call:

jobs:
  run:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Push HEAD to main version branch
        run: |
          branch_name=$(echo "${GITHUB_REF_NAME}" | sed -E "s/(v[0-9]+)\..+/\1/")
          git push --force origin "HEAD:refs/heads/${branch_name}"
```

GITHUB_REF_NAMEに `v3.4.5` のようなタグ名が入っているので、これをsedで処理して `v3` に加工し、remote側のその名前のブランチにpushしている。こういった環境変数については、[GitHub Actionsの公式ドキュメント](https://docs.github.com/en/actions/learn-github-actions/environment-variables)にまとめられている。参考にしたactions/checkout@v3はタグとして管理されているようだったが、継続的に更新されていくものなので、タグよりブランチの方が好ましいと考えて今回の実装ではブランチを選んだ。

プッシュ先は `refs/heads/v3` と指定している。注意点として、例えばこれを `v3` と指定しまうと、まだv3というブランチもv3というタグも存在しなかった場合に `refs/heads/v3` と `refs/tags/v3` のどちらを意味しているのか分からないという理由でエラーになってしまうため、初回実行時から成功させるためにこのように正確な指定が必要になる。

ちなみに、Gitでcommitをつくるときやannotated tagをつくるときは事前に次のような設定が必要になるが、今回は特に署名が必要な工程は存在しないため、この手のコマンドは不要であった。

```
git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"
```

---

上のYAMLのコード例を修正した。

デフォルトで用意される `GITHUB_TOKEN` には書き込み権限が付与されていない。なので、`git push` を許可するためにはリポジトリの設定画面でこの挙動を変更するか、あるいはWorkflowのYAMLファイルに次のように書くかする必要がある。

```yaml
permissions:
  content: write
```

今回は後者のパターンで行くことにしたので、この部分を追記させてもらった。
