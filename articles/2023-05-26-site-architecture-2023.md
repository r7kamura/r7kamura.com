---
title: このサイトの設計 2023年版
---

2023年時点でのこのサイトの設計について。

## 記事の執筆手順

r7kamuraの手元のPCでMarkdownファイルが編集され、GitリポジトリにPushされる。

画像はImgurにアップロードされ、そのURLがMarkdownファイル内に記述される。この辺はMarkdownファイル編集時に手作業で行われる。

## ホスティング

Gitリポジトリに変更がPushされると、GitHub ActionsでHTMLやCSSやJavaScript等のファイルが再生成され、それらのファイルがGitHub Pagesから配信される。また前述の通り、画像はImgurから配信される。

ソースコードのホスティングという観点だと、記事原稿は <https://github.com/r7kamura/r7kamura.com> で、実装は <https://github.com/r7kamura/r7n> で管理されている。

## ドメイン

Amazon Route 53で r7kamura.com ドメインが管理されている。

このサイトの運用で唯一課金されている部分。

## 歴史

- 2011年 r7kamura.github.io ドメインでサイトを公開
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
