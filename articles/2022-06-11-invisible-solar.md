---
title: SolargraphをDocker環境でこっそり使う
---

[YARD](https://github.com/lsegal/yard)のアノテーションを元にそこそこ便利な説明や補完機能を提供してくれる[Solargraph](https://github.com/castwide/solargraph)を、Gemfileに含めずこっそり使いてえ……しかもDocker環境で……という人向けの情報。

一番の問題として、`gem install solargraph` でsolargraph gemを入れたい訳だけど、揮発しないように工夫が必要になる。

一般的なRuby向けのDockerfileの構成だと、`bundle install` で入れるGemだけをdata volumeで永続化していることが多い。よく見るパターンは、`vendor/bundle` または `/usr/local/bundle` にdata volumeをmountするようdocker-compose.ymlで設定し、加えてこのパスを `BUNDLE_PATH` に設定するパターン。これに加えて例えば `GEM_HOME` も同じパスに設定しておくと、`gem install` でインストールするGemもそこに
相乗りできるようになる。今回は雑にそのように設定する。こうすることで、次のようにDockerコンテナ内で `gem install` するとsolargraphが永続化されるようになる。この辺の環境変数については[RubyのDockerイメージでよく使う環境変数](https://r7kamura.com/articles/2022-04-01-ruby-dockerfile-env)で整理しているので良ければ参考にどうぞ。

但し、こっそりやるという主旨なので、Dockerfileやdocker-compose.ymlに `GEM_HOME` に関する設定は追加できない。そこで、docker-compose.override.ymlを使う。このファイルは、存在する場合はdocker-composeが勝手に設定をmergeしてくれるというもので、今回のような用途で便利に使える。このファイルは .gitignore で無視するように設定しておく。

```
# .gitignore
docker-compose.override.yml
```

solargraphを動かすためのサービスを追加で定義する。

```yaml
# docker-compose.override.yml
services:
  solargraph:
    build: .
    command: /workspace/vendor/bundle/bin/solargraph socket --host=0.0.0.0 --port=7658
    volumes:
      - .:/workspace:cached
      - bundle:/workspace/vendor/bundle
    environment:
      GEM_HOME: /workspace/vendor/bundle
    ports:
      - "7658:7658"
```

念のため書いておくが、この例ではDockerfileのワーキングディレクトリとして/workspaceというディレクトリを使っていて、かつGemの永続化用のdata volumeを/workspace/vendor/bundleにマウントしている。

上で定義したsolargraphサービスを借りて、まず/workspace/vendor/bundleにsolargraph gemをインストールしてもらう。

```
docker-compose run --rm solargraph gem install solargraph
```

そして、solargraphサービスを改めて起動する。

```
docker-compose up --detach solargraph
```

バックグラウンド実行されているsolargraphサービスが、solargraph gemのデフォルトである7658番ポートで通信を待ち受けてくれるようになるので、あとはエディタにSolargraphのための拡張を入れて、これに接続させる。

例えばVSCodeだとこの拡張を使う。

- [Ruby Solargraph - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=castwide.solargraph)

VSCodeの場合、設定をsolargraph.externalServerで検索すれば、settings.jsonで好きに設定しろ的なボタンが表示されるので、次のように外部接続する旨と接続先の情報を記入する。

```json
"solargraph.externalServer": {
  "host": "localhost",
  "port": 7658
},
"solargraph.transport": "external",
```

これでワークスペースを開き直すとかしてエディタに設定を読み込ませれば、こっそりsolargraphを使う設定は完了。

上手く動いているかどうかは、例えば `"foo".` とか入力した状態で補完 (WindowsだとCtrl + Space) を実行してみたり、YARDで型名を注釈した仮引数にマウスオーバーして型名を表示させたりすると分かる。

![](https://i.imgur.com/2XCUcgWh.png)
