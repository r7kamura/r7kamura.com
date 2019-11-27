---
title: DockerでBundler 2.0を使った
---

最近 Bundler 2.0 がリリースされたので、Docker を利用して開発しているアプリでも Bundler 2.0 を使おうと思い、色々と試行錯誤しました。

## github オプション

https://bundler.io/blog/2019/01/03/announcing-bundler-2.html の Bundler 2.0 のアナウンスの記事を見ると、"Changed the github: 'some/repo' gem source to use the https schema by default" とあるように、github オプションを使ったときにデフォルトで HTTPS が利用されるようになっているようでした。そこで、HTTPS が使われるようにわざわざ上書きしていた箇所を Gemfile から取り除きました。

## gem install bundler -v 2.0.1

このアプリでは ruby:2.5.1 をベースとした Docker イメージを利用していたので、Dockerfile の bundle install の直前に gem install bundler -v 2.0.1 を追加しました。これで Bundler 2.0.1 が利用されるようになるかと思いきや、bundle install すると unsecure なプロトコルが使われているという警告が表示されました。

調べたところ、Gemfile.lock の BUNDLED WITH の項目で 1.x が指定されている場合は自動的に Bundler 1 に切り替わるという情報を得ました。そこで BUNDLED WITH の項目を 2.0.1 に更新して再挑戦。しかし、依然として unsecure なプロトコルが使われているという警告が表示されました。

## BUNDLER_VERSION

更に調べてみたところ、BUNDLER_VERSION という環境変数でバージョンが指定されている場合、強制的にそのバージョンが使われるという情報を得ました。また、Docker Hub の提供している Ruby 用の Docker イメージ側で、BUNDLER_VERSION を指定しているということを知りました。

https://github.com/docker-library/ruby/issues/246

最近この問題が解消された（Docker イメージ側では BUNDLER_VERSION を指定しなくなった）とのことなので、手元の Docker イメージとそのキャッシュを消してこの問題が修正されたあとの Docker イメージを再取得してみました。また、他の開発者の手元の Docker イメージを再取得するのは難しいだろうと考え、アプリの Dockerfile 側で BUNDLER_VERSION を上書きすることにしました。しかし unsecure なプロトコルが使われているという警告は消えません。

## github オプション

実は BUNDLER_VERSION に対応したタイミングで Bundler 2.0.1 が使われるように切り替わっていたのですが、Bundler 2.0.1 ではまだ :github オプションを使っても HTTPS が使われるようにはなっていないようでした。

- https://github.com/bundler/bundler/issues/6910
- https://github.com/bundler/bundler/pull/6911

結局、git source の上書き箇所を取り除くのはこの Issue への対応が入るまで待つことにしました。
