---
title: このサイトの設計 2023年版
---

2023年時点でのこのサイトの設計について。

## 過去の関連記事

- [このサイトの設計 2020年版](/articles/2020-09-23-this-site-setup-2020)
- [このサイトの設計 2022年版](/articles/2022-01-05-this-site-setup-2022)

## 記事の執筆手順

Markdownファイルを編集して、完成したらGitリポジトリにPushする、という執筆手順になっている。

## ホスティング

画像の配信にはImgurを、それ以外の配信にはGitHub Pagesを使っている。

Gitリポジトリに変更がPushされると、GitHub Actionsで記事原稿や実装を元にHTMLやCSSやJavaScript等のファイルが生成され、GitHub Pagesでそれらのファイルが配信されるという仕組み。

ソースコードのホスティングという観点だと、記事原稿は <https://github.com/r7kamura/r7kamura.com> で、実装は <https://github.com/r7kamura/r7n> で管理している。

## ドメイン

2019年にAmazon Route 53で `r7kamura.com` ドメインを購入し、現在に至るまで維持している。

このサイトで唯一課金されている部分。

## 歴史

- 2011年 r7kamura.github.io として公開
- 2013年 実装をRubyに変更
- 2013年 記事投稿開始
- 2019年 ドメインを r7kamura.com に変更
- 2019年 他サービスから記事を移行
- 2020年 『[このサイトの設計 2020年版](/articles/2020-09-23-this-site-setup-2020)』投稿
- 2021年 画像配信元をImgurに変更
- 2021年 実装をRustに変更
- 2022年 『[このサイトの設計 2022年版](/articles/2022-01-05-this-site-setup-2022)』投稿
- 2022年 実装をTypeScriptに変更
- 2023年 Tailwind CSSを導入
- 2022年 Googleドキュメントで執筆機能を追加
- 2023年 Googleドキュメントの執筆機能を廃止
- 2023年 『[このサイトの設計 2023年版](/articles/2023-05-26-site-architecture-2023)』投稿
