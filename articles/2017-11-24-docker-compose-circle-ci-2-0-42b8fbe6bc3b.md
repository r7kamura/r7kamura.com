---
date: 2017-11-24T17:06:57.082Z
from: medium
title: "docker-compose を利用して開発しているアプリを Circle CI 2.0 でテストする"
---

普段から docker-compose を利用して開発しているアプリケーションを、Circle CI 2.0 に対応させる作業を行ったので、今回必要になった設定をまとめておきます。

## アプリケーションの概要

このアプリケーションでは、フロントエンドに Node.js を利用しており、バックエンドに Ruby on Rails を利用しています。それぞれ docker-compose で Node.js と Ruby のサービスを動かしており、Circle CI でも docker-compose を利用してテストすることにしました。

## 設定内容

設定と言っても、以下のようなファイルを用意するだけです。Circle CI では docker-compose を利用できるので、普段から docker-composeを使っているのであれば、ほとんど余分な設定無しにテストを実行できます。

まず Git リポジトリを checkout してきた後、node サービスで yarn run test、ruby サービスで bundle exec rake を実行しています。必要なタイミングで、勝手に Docker イメージが build あるいは pull されます。

## docker-compose v2

罠として、執筆時点では docker-compose v3 が利用できますが、Circle CI 2.0 は今のところ docker-compose v2.0 までにしか対応していませんでした。そのため、自分のプロジェクトでは v2.0 を利用するように変更することになりました。

docker-compose v2.1 未満では、healthcheck の機能がありません。そのため、MySQL が起動して通信できるようになるまで Rails プロセスの起動を待つ、というようなことが単純に実現できません。上例で ./scripts/wait-for-mysql.sh としているところが、この処理に対応しています。(追記: 現代ならば Dockerize を使って対応するのが妥当だと思います)

## キャッシュ

さて、毎度最初から Docker イメージを作り直していては時間が掛かるので、Circle CI のキャッシュ機能を積極的に活用していきましょう。

Circle CI 2.0 の Docker イメージは、課金しない限り中間レイヤーをキャッシュしてくれないため、課金具合に依存せずにキャッシュされるようにするには、自分でキャッシュを管理する必要があります。今回のアプリケーションでは、gems と node modules をインストールし終えるところまではキャッシュさせておきたかったので、Gemfile.lock と yarn.lock の checksum をキーにして、Docker イメージの先頭レイヤーをキャッシュしておく作戦を取りました。

## 雑感

Docker を利用していないアプリケーションの CI を 1.0 から 2.0 に移行するときには苦労するものの、元々 Docker を利用している場合は非常に楽。しかし高速化などの最適化を考えようとすると、やはり相応の時間が必要になってしまいますね…。

## 追記

これまで記載していた docker images -q を使う方法では、リポジトリ名やタグ名が保存されなかったり、docker load -i ~/caches/images.tar | true にしていると一部のイメージが復元できなかったりと問題があったので、上記のコードを修正して更新しました (2017-11-27 16:43)。
