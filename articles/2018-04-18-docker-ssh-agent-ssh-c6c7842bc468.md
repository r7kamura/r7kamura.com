---
date: 2018-04-18T07:02:01.168Z
from: medium
title: "Dockerコンテナからホストのssh-agentを介してSSHで接続する"
---

外部のプロセスとやり取りするために、ssh-agent がソケットファイルを提供しており、このパスが環境変数 SSH\_AUTH\_SOCK に設定されています。例えば ssh-add などがこの環境変数を利用しています。このファイルをマウントしつつ環境変数 SSH\_AUTH\_SOCK をマウントしたパスに指定してあげることで、対象の Docker コンテナからホストの ssh-agent を forward して通信できるようになります。

以下は docker-compose run を使ったときのコード例です。SSH\_AUTH\_SOCK は実行時に動的に変化するため、docker-compose.yml の volumes の項目に記載しておくことはできず、-v オプションで実行時に指定する必要があります。(-v を使うと volumes で指定している設定は使われなくなるので気を付けてください)

docker-compose run --rm -v ${SSH\_AUTH\_SOCK}:/ssh-agent -e SSH\_AUTH\_SOCK=/ssh-agent my\_service example\_command

どういうときに利用することになるかと言うと、例えば自分の場合だと、Circle CI 2.0 用に Ruby 用の Docker イメージを用意していて、その中で Capistrano を利用して SSH 経由でどこぞのサーバにコードをデプロイする場合に使うことになりました。
