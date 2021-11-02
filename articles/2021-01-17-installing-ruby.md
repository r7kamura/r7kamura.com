---
title: Rubyをインストール
---

自分の開発環境にRubyを入れたので手順をメモしておく。

最近はほぼ全てのプログラミング言語の実行環境をDocker経由で動かすようにしていたのだけど、とはいえ日々OSSのメンテナンスや不具合検証などで曳光弾的なコードを書こうとすると、いちいちDockerfileやdocker-compose.ymlを用意するのが煩わしく、手元の環境に直接入れてしまっておく方が楽に感じることも多い。

そういう訳で、今回もまた先日作り直したWSL2環境のUbuntuにRubyをインストールするのであった。rbenvとruby-buildをgit-cloneで持ってくる。最近はRuby 2.7.2を普段使いしている。

```
git clone git@github.com:rbenv/rbenv.git ~/.rbenv
git clone git@github.com:rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="${HOME}/.rbenv/bin:${PATH}"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
rbenv install 2.7.2
rbenv global 2.7.2
```

ちなみに今回は、<https://github.com/rubocop-hq/rubocop-rails/issues/421> を報告するのに検証用のコードを書く機会が発生したので入れた。こういうものに遭遇したときに、面倒だし報告しなくても良いか、と思ってしまう閾値はわりと低いところにあるように感じる。簡単に動かせる環境があるかどうかというのは、手を伸ばしたら届くところにあるか、それとも立ち上がって取りに行かなければならないか、みたいな違いがあると思う。
