---
title: CHANGELOGが変更されたらタグを付けてリリース
---

CHANGELOG.mdに新しいバージョンのセクションを追加したら、そのバージョン用のGitタグを付け、更にそのバージョン用のGitHub Releaseを発行する、という作業が増えてきたので自動化した。

動機としては、次の[weneedfee-action](https://github.com/r7kamura/weneedfeed-action)というGitHub Actionの開発等で最近やたらと新しいバージョンを発行しており、都度手作業で決まって作業をやるのが大変になってきたしミスも増えそうで怖いという背景がある。

このリポジトリはライブラリのようなものではないので、`"version": "1.2.3"` のようにバージョンが記述される場所が無い。唯一リポジトリ内にバージョンが書かれるのはCHANGELOG.mdだけであるということから、こうすればCHANGELOGをより真面目に書くようになるだろうという打算も込めて、CHANGELOG.mdの最初に登場する値をこのリポジトリのバージョンとみなして扱うことにした。

この仕組みでバージョンを抽出し、前のcommitと現在のcommitとで値を比較し、変更があればGitタグを発行する、というWorkflowをまず用意する。自分は、[r7kamura/workflows](https://github.com/r7kamura/workflows) というリポジトリに自分用のGitHub ActionsのWorkflow定義をまとめることにしている。そういう訳で、このリポジトリに[changelog-tag](https://github.com/r7kamura/workflows/blob/main/.github/workflows/changelog-tag.yml)というWorkflow定義を新たに追加することに。

GitHub ActionはMarketplaceと連動している関係から、公開しているGitHub Actionでは新しいバージョンを用意したときにはGitタグだけでなくGitHub Releaseも発行してあげる方が喜ばれる。タグが付けられたらGitHub Releaseを発行する、というのは既に[github-release](https://github.com/r7kamura/workflows/blob/main/.github/workflows/github-release.yml)というWorkflowを用意していたので、特に新たに用意する必要はなし。

あとはこれらを、使いたいリポジトリ側から呼び出すように設定すれば完成。

```yaml
# .github/workflows/tag.yml
name: tag

on:
  push:
    branches:
      - main
    paths:
      - CHANGELOG.md
  workflow_dispatch:

jobs:
  tag:
    uses: r7kamura/workflows/.github/workflows/changelog-tag.yml@main
    secrets:
      github-token: ${{ secrets.PERSONAL_ACCESS_TOKEN }}
```

```yaml
# .github/workflows/release.yml
name: release

on:
  push:
    tags:
      - "v*.*.*"
  workflow_dispatch:

jobs:
  release:
    uses: r7kamura/workflows/.github/workflows/github-release.yml@main
    secrets:
      github-token: ${{ secrets.PERSONAL_ACCESS_TOKEN }}
```

実際のソースコードはここにある。

- <https://github.com/r7kamura/weneedfeed-action/blob/v3.9.0/.github/workflows/release.yml>
- <https://github.com/r7kamura/weneedfeed-action/blob/v3.9.0/.github/workflows/tag.yml>

動いている様子はここからも確認できる。

- <https://github.com/r7kamura/weneedfeed-action/actions>

GitHub Actionsの話は、以前に[パッケージリリースの自動化](https://r7kamura.com/articles/2021-11-14-crate-auto-release)や[Reusable workflows](https://r7kamura.com/articles/2021-11-20-reusable-workflows)という記事でも触れたので、これらを先に読む方が分かりやすいかも。
