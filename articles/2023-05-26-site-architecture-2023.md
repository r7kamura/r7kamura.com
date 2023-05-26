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

## 最近の変更点

2020年にはRuby、2021年にはRust、2022年にはTypeScript、と実装の主部分で使う言語が変わってきている。

2022年から、CSSの実装にTailwindを使うようになった。

2022年にGoogleドキュメントでも記事原稿を書けるようにしたが、2023年にはこの仕組みは廃止した。Googleドキュメント側の変更で、画像を直接参照できなくなったことで不便になったため。
