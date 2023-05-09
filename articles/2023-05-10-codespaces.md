---
title: GitHub Codespaces 雑感
---

GitHub Codespacesをちょっと試した。

初期導入時にハマりどころも多いけど、真面目に設定しておけば、普通にCodespacesの環境だけで開発することは十分できそうだなと感じた。リポジトリ単位で環境を用意するのが基本で、多くのリポジトリに対して毎日のようにレビューをしたりPull Requestを出したり、みたいな開発フローには綺麗にはまらないと思うけど、普通に仕事で単一のリポジトリに対してだけ作業する用途であれば上手くはまると思う。Zoomで会議しながら重い処理を実行していても影響が無いのは良かった。Zoomで会議しながら重い処理を回すべきではないという意見もある。

## Codespacesの利用の流れ

Codepsacesを利用するときの流れについて。まず、予め .devcontainer/devcontainer.json を配置したリポジトリを用意しておく。Codespacesに詳しい誰かが既にそのリポジトリにこれを用意しておいてくれている場合、これはスキップできる。この文書を読んでいる人は恐らくWebブラウザのエディタではなくVSCodeで開発したいと思うので、手元のVSCodeにCodespaces拡張を入れておく。使っているエディタがVSCodeじゃないけどCodespacesを使いたい人は、諦めてVSCodeに移行する。

それから、VSCodeの "Codespaces: Create new codespace" コマンドで、リポジトリとブランチ、Machine Typeなんかを選択する。すると環境が用意され、VSCodeでこのワークスペースが開き、ログを眺めながら少し待つと環境構築が完了して開発ができるようになる。この辺の操作はWebブラウザからでも済ませられる。

![](https://i.imgur.com/qyPZwNmh.png "Codespacesで新しい環境を用意するときの画面")

## 設定例

今回試したアプリケーションの構成要素は以下のような感じ。

* Rails
* Node.js
* MySQL
* Redis
* Elasticsearch

Codespacesで選択できるMachine Typeの最小構成は2-core / 4GB RAM / 32GB、最大構成は32-core / 64GB / 128GB。今回はコントローラーが100個程度という小さめのRailsアプリを対象にしたこともあり、最小構成で試した。

今回自分が利用した .devcontainer/devcontainer.json は以下の通り。

```json
# .devcontainer/devcontainer.json
{
  "name": "example rails application",

  "image": "mcr.microsoft.com/devcontainers/base:ubuntu-22.04",

  "features": {
    "docker-in-docker": {
      "dockerDashComposeVersion": "v2"
    }
  },

  "postCreateCommand": "docker compose run --rm app bin/setup",

  "postStartCommand": "docker compose up --detach",

  "forwardPorts": [3000]
}
```

Codespacesのよくあるチュートリアルでは、「Node.js用のDockerイメージを使ってNode.js (だけ) を使った簡単な開発を行ってみましょう」みたいな単純な例が紹介されることが多い。一方で今回の例だと色々起動しないといけないので、docker composeを使いたい。そういう訳なので、Ubuntu 22.04に便利なツールを幾らか足してくれたMicrosoft公式のDockerイメージを利用し、追加で環境構築時にdocker composeを使えるようにセットアップするプラグインを指定している。featuresの項目でその部分。Ubuntu 22.04とかは何でも良いんだけど、Devcontainer向け公式イメージだとCodespacesの近くにキャッシュされていて環境構築が速い。

初回環境構築時と環境再構築時には、postCreateCommandが実行される。ここで (docker composeを介して) Railsアプリにおける初期設定用コマンド、`bin/setup` を実行している。ここで `bundle install` やDBの作成、初期データの投入などが行われる。環境構築完了時と環境の再稼働時には、postStartCommandが実行される。ここで (docker composeを介して) RailsのサーバーやMySQLなどが起動する。

今回試した例だと、Ubuntu 22.04用コンテナの用意やdotfilesの処理やpostCreateCommandに起因するdocker compose buildやbin/setup等で、環境構築に掛かる時間は合計10分程度だった。一方、環境の再稼働には30秒ぐらい掛かるようだった。コーヒーは入れられないがTwitterは見られるぐらいの絶妙な時間。

一番時間の掛かるRuby向けイメージのビルドと `bundle install` について、毎日それらが完了した状態の最新版のDockerイメージをビルドしておくようにすれば、合計5分程度に縮められると思う。真面目に考えると `bundle install` の最適化はちょっと面倒かも。ところでGitHub Actionsを介したGitHub Container Registryからの転送量については課金対象にならないとドキュメントにあったけれど、Codespacesの環境構築時の転送量が課金対象になるのかどうかは読み取れなかった。まあCIで使うDockerイメージとは違って高頻度でダウンロードされる訳ではないので、ここについてはあまり心配する必要はないかも。

## カスタマイズとか

dotfilesについて。:username/dotfilesリポジトリにinstall.shみたいなそれらしい名前のファイルを置いておくと (検知してくれるファイル名が何パターンかある)、環境構築時にこれを実行してくれる仕組みがある。具体的に言うと、/workspaces/.codespaces/.persistedshare/dotfiles にgit cloneして実行してくれているらしい。なので、好きな.bashrc使いたい、gh使いたい、tmux使いたい、みたいな要求がある人はこれを利用することになる。ちなみにこの辺の挙動は <https://github.com/settings/codespaces> で幾らか設定できる。元々Codespacesではない普通のDevcontainerのためにdotfilesリポジトリにinstall.shを持っていたのだけど、root権限で使うかどうか、どこにcloneして実行するかなどCodespacesでは微妙に挙動が異なるので、今回幾らか対応する必要があった。

devcontainer.jsonで設定することで、自動的に環境構築時にghを入れたりVSCodeの拡張を入れたりといったことはできる。「プロジェクト内で便利な設定を他の開発者と共有できるので便利！」といった声を巷で見かけることもあるのだけど、この辺の開発支援用ツールって個人間で大きく好みが異なりがちなので、本当にプロジェクト固有のもの (例えば社内の独自OpenAPIスキーマ用独自VSCode拡張とか) ぐらいしかdevcontainer.jsonで共有することはなくて、それ以外はdotfilesで設定することになるのだろうなあと思っている。

このdotfilesのinstall.shって、どんなプロジェクトでも動くようユニバーサルに書かないといけないはずなので、slimイメージとかでcurlが入ってなかったら入れる、alpineのときはパッケージマネージャーが異なるので分岐する、root権限の有無で分岐する、Codespacesかどうかで分岐する、みたいな面倒なコードが徐々に増えていきそうな気配はする。

## Codespaces対応の難度

そもそも環境構築手順が綺麗に整理されていないと、Codespacesにも対応しづらいので、その辺が荒れてると相応に苦労すると思う。今回試したアプリケーションの例だと、開発環境で利用する秘匿値の管理が煩雑で特に自動化されておらず、環境構築時に手順書を読みながらなんか良い感じのところからダウンロードして自分でファイルに書き込むことでようやく完成するみたいな状況だったため、少し困った。欲しい秘匿値が足りない場合はデフォルトのそれなりの値にフォールバックして一応エラーは出さずに基本の部分は動く、ぐらいの設計になってるとこういうときやりやすい。

とはいえ少なくともCIがあるプロジェクトであればその辺の仕組みは最低限自動化されているはずなので、最初はCIで出来ていることが出来るような環境をCodespaces上につくる、というのを目標に進めていくとやりやすいと思った。
