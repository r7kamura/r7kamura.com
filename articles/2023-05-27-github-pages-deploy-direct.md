---
title: GitHub Pagesへ直接デプロイする方式に変更
---

このサイトのGitHub Pagesへのデプロイ方式を、GitHub Actionsを使って直接デプロイする方式に変更した。

## 新機能の説明

2022年7月まで、GitHub Pagesにファイルをデプロイするためには、何らかのブランチにデプロイしたいファイルを配置する必要があった。これを実現するために、よく[peaceiris/actions-gh-pages](https://github.com/peaceiris/actions-gh-pages)のようなカスタムアクションが使われていた。

2022年7月から、新方式として、[actions/upload-pages-artifact](https://github.com/actions/upload-pages-artifact)と[actions/deploy-pages](https://github.com/actions/deploy-pages)という二つのカスタムアクションを組み合わせて、ブランチにファイルを配置することなく直接GitHub Pagesにデプロイする方式も選べるようになった。この情報は、[GitHubのブログ記事](https://github.blog/changelog/2022-07-27-github-pages-custom-github-actions-workflows-beta/)でも紹介されている。2023年5月時点で、この機能はβ版という位置付けになっている。

## このサイトでの変更箇所

リポジトリの設定と、workflow、合計二箇所を変更することになった。

リポジトリの設定変更について。GitHub PagesのSourceを "Deploy from a branch" から "GitHub Actions" に変更した。

![](https://i.imgur.com/leRcFfuh.png "Settings > Pages")

workflowの変更について。変更前は、デプロイ用のworkflowは以下のような内容だった。

```yaml
name: publish

on:
  push:
    branches:
      - main
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-22.04
    steps:
      - uses: actions/checkout@v3
        with:
          repository: r7kamura/r7n
      - uses: actions/checkout@v3
        with:
          path: r7kamura.com
      - uses: actions/setup-node@v3
        with:
          node-version-file: package.json
          cache: npm
      - run: npm install
      - run: npm run export
        env:
          ARTICLES_DIRECTORY_PATHS: ./r7kamura.com/articles
      - uses: peaceiris/actions-gh-pages@v3
        with:
          cname: r7kamura.com
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: out
```

変更後は、以下のような内容になった。

```yaml
name: publish

on:
  push:
    branches:
      - main
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-22.04
    steps:
      - uses: actions/checkout@v3
        with:
          repository: r7kamura/r7n
      - uses: actions/checkout@v3
        with:
          path: r7kamura.com
      - uses: actions/setup-node@v3
        with:
          node-version-file: package.json
          cache: npm
      - run: npm install
      - run: npm run export
        env:
          ARTICLES_DIRECTORY_PATHS: ./r7kamura.com/articles
      - uses: actions/upload-pages-artifact@v1
        with:
          path: out
  deploy:
    needs: build
    permissions:
      id-token: write
      pages: write
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-22.04
    steps:
      - uses: actions/deploy-pages@v2
        id: deployment
```

元々peaceiris/actions-gh-pagesを実行していた箇所が、actions/upload-pages-artifactに変わった。また実行されるjobが、元々buildだけだったのが、buildとdeployの2つに分かたれた。

buildアクションでは、まず一時的にartifactとしてファイルがアップロードされる。次に、後続のdeployアクションで、artifactがGitHub Pagesにデプロイされる。actions/deploy-pagesでは、このように二つのjobに分割することを推奨していたので、そのようにした。

また細かい変更点として、カスタムドメインを使うためのCNAMEというファイルが、リポジトリのデフォルトブランチに配置されるようになった。
