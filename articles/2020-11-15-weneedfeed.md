---
title: Weneedfeed
---

ウェブページからフィードを生成する[weneedfeed](https://github.com/r7kamura/weneedfeed)というツールをつくった。

## 使い方

このツールはRubygemとして実装されているので、Rubyがインストールされている環境が必要になる。ツール自体はgem installでインストールできる。

```
gem install weneedfeed
```

利用者には、URLとCSSセレクタをweneedfeed.ymlというYAML形式のファイルに書いてもらうことになる。例えばこのウェブサイト、r7kamura.comの新着記事のためのRSSフィードを生成しようとすると、こんな内容になる。

```yaml
pages:
  id: r7kamuracom
  title: r7kamura.com
  url: https://r7kamura.com/
  item_selector: li
  item_description_selector: p:nth-child(3)
  item_link_selector: a
  item_time_selector: time
  item_title_selector: p:nth-child(2)
```

`weneedfeed build` コマンドを利用すると、適当なRSSフィードをXMLファイルとして `./output` ディレクトリに出力できる。このファイルをどこかにホスティングして使う訳だが、RSSフィードの中では (ホスト名などの含まれた) 完全な形式のURLを使う必要があるので、このURLの生成に使う情報も引数として与える必要がある。例えば、r7kamura/weneedfeed-r7kamuraというリポジトリを利用してGitHub Pagesにプロジェクトサイトとしてホスティングしてもらう場合はこういう感じで使う。

```
weneedfeed build --base-url=https://r7kamura.github.io/weneedfeed-r7kamuracom
```

YAMLファイル記述時に手元で動作確認するために、`weneedfeed server` コマンドが用意されている。localhost:8080でHTTPサーバが立ち上がるので、ブラウザから生成物を確認できる。

```
weneedfeed server
```

## weneedfeed-action

YAMLファイルからweneedfeedで静的ファイルをつくってGitHub Pagesに配置するという定型的な作業を自動化するために、[weneedfeed-action](https://github.com/r7kamura/weneedfeed-action)というGitHub Actionが用意されている。これを使うと、リポジトリにYAMLファイルを置くだけでフィードを用意できるようになる。

例えばこういう感じでGitHub Actions用のworkflowを定義して使う。ファイルの生成にr7kamura/weneedfeed-actionを、ファイルのデプロイにpeaceiris/actions-gh-pagesを使っている。

```yaml
# .github/workflows/publish.yml
name: publish

on:
  push:
    branches:
      - master
  schedule:
    - cron: "15 0 * * *"

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: r7kamura/weneedfeed-action@v3
        with:
          base_url: https://r7kamura.github.io/weneedfeed-r7kamuracom
      - uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: output
```
