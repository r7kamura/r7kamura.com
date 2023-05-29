---
title: 野良フィードの保守
---

毎日0時に生成している野良フィードの保守をした。

## 対象

対象は以下の3つ。いずれも、公式でフィードが提供されていないウェブコミックの更新通知を受け取るためのもの。

- <https://github.com/r7kamura/weneedfeed-comic-newtype>
- <https://github.com/r7kamura/weneedfeed-mangacross>
- <https://github.com/r7kamura/weneedfeed-webace>

## デプロイ方式

GitHub Pagesへのデプロイを、ブランチを使う旧方式ではなく、GitHub Actionsを使う新方式に統一した。これにより、GitHubのアカウントの活動から機械的なcommitが減り、管理が楽になった。尚、方式変更の話題については、[GitHub Pagesへ直接デプロイする方式に変更](https://r7kamura.com/articles/2023-05-27-github-pages-deploy-direct)という記事でも触れた。

## デフォルトブランチ

デフォルトブランチ名も対象のリポジトリ間で統一した。GitHub Pagesでは、Environmentという仕組みを利用してデプロイがなされる。このとき、Environmentには基本的にProtection Ruleが設定されており、特定のブランチからのみデプロイ可能に設定されていることが多い。デフォルトでそういう設定がなされるためである。ブランチ名を変更した場合、これも配慮しないと次回デプロイ時に失敗してしまう。

## セレクタ

一部のサイトでid属性の値が変更されたことでフィードが取得されなくなっていたのを確認したので、これを修正した。
