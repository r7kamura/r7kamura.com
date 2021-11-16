---
title: Imgur OpenAPI
---

[Imgur API](https://apidocs.imgur.com/)のOpenAPI specを記述するプロジェクト、[imgur-openapi](https://github.com/r7kamura/imgur-openapi)。

## 開発の背景

RustでImgur APIのクライアントをつくる中で、通信とデータモデルのコードを自動生成したかったので、これをつくりはじめた。このクライアントの製作過程については、[imgurian](/articles/2021-11-11-imguria)という記事により詳しく書いている。Imgur APIのドキュメントは情報が不足しすぎているので、試しにリクエストを送りながら、手探りで情報をまとめつつ定義を編纂していっているところ。

## OpenAPI specのLinter

OpenAPI Specを記述するにあたり、CIで使えるようなLinterが欲しい。OpenAPIにはコミュニティによるLinterが幾つもある。[OpenAPI.Tools](https://openapi.tools/)というページに、周辺ツールの情報がよくまとめられている。[stoplightio/spectral](https://github.com/stoplightio/spectral)や[redocly/openapi-cli](https://github.com/Redocly/openapi-cli)というLinterを実際に利用してみて、最終的にredoclyのものが小回りが効いて良さそうだったので、imgur-openapiではこれを利用することにした。違反箇所が見つかったときにGitHubのPull Requestで注釈してくれる機能が欲しかったが、探してみた感じでは既存のものが見当たらなかったので、[r7kamura/redocly-problem-matchers](https://github.com/r7kamura/redocly-problem-matchers)というのをつくって利用している。

## Rustでの利用事例

OpenAPI specから自動生成したRust向けのコードを、[r7kamura/imgur_openapi-rs](https://github.com/r7kamura/imgur_openapi-rs)という形でライブラリ化して管理することにしている。これまでつくっていたImgur APIのクライアントも、このライブラリを利用した実装への移行が終わり、CLIと通信部分との繋ぎ込みの面倒を見るだけで良くなったので、随分とコンパクトになったと思う。どうせならCLI部分も自動生成したいところだが……ユーザーインターフェースは例外の塊なので、そう上手くはいかないかも。

## 所感

今回色々とツールをつくってOpenAPIダンスを踊らされたが、前に[パッケージリリースの自動化](/articles/2021-11-14-crate-auto-release)の記事で書いたように、Gitタグの生成やパッケージレジストリへの登録などをある程度自動でやってくれる仕組みを整えておいたので、意外と苦も無くことを進められている。
