---
title: Rubyリファレンスマニュアルと空白の話の続き
---

rurema/bitclust#61 の話です。

## 背景

前に書いた記事 で、Ruby リファレンスマニュアルを Web ブラウザで見たときに不要な空白が表示されてしまうという問題について取り上げました。要は、ソースコードの日本語文章に編集上の都合で改行が含まれており、HTML として出力するときにそれを残しているため、一部の Web ブラウザで閲覧したときにそれが空白として表示されてしまうという問題でした。

## Pull Request

あれから Issue にコメントをいただき、問題の原因や解決方法も見えてきたので、Bitclust に Pull Request を出してみました。でも最初に推奨されていた解決方法とは違う結果になってしまったかもしれません。これでいいのか...?

https://github.com/rurema/bitclust/pull/61

あらためて考えてみると、Issue と Pull Request にほぼ全ての経緯が記述されているので、この記事に書くことはほとんどありませんでした…。

## 余談: テスティングフレームワーク

Bitclust のコードを変更する作業の中で、ひさしぶりに test-unit を使いました。Ruby 1.9.1 で本体に含まれなくなったあと、Test::Unit から test-unit に名前を変えて活動を続け、Test::Unit 互換 API を提供するために Ruby 2.2.0 で再び本体に含まれるようになった、あの test-unit です。

ちなみに bitclust では test-unit-rr という gem を利用していて、テスト中でいわゆる mock を実現しているのですが、minitest で言うところの test/test_helper.rb や rspec で言うところの spec/spec_helper.b のようなファイルが存在せず、「全体を通して実行したときは正しく動作するのに、単一のテストファイルを実行しようとすると test-unir-rr が require されていないためにテストが例外を発生させる」という問題があったので、とりあえず最小限の変更で済ませるために、前述した Pull Request で冗長に require "test/unit/rr" を追加したりしています。

test-unit や minitest などの歴史的経緯を追っていると、勉強用途で peritest というテスティングフレームワークを過去につくっていたことを思い出します。本体は assert という matcher しか提供せず、極力プラグインと組み合わせて使うことを推奨したり、結果の出力などは全て subscriber という機構に抽象化したりと、おれのかんがえた最強のテスティングフレームワークをつくる子どものような感じで、当時はやけに楽しんでつくっていました。

https://github.com/petitest/petitest

![](/images/2018-11-19-rurema-whitespace-2-1.png)

テスティングフレームワークと言えば、最近 anolson/git_diff に Pull Request を出そうとしたときも、テスト結果の出力方法が fabulous で、ちょっと楽しくなりました。これは minitest/pride を利用した出力結果だと思います。こういう些細なところへの機知みたいなものを大事にしていきたいですね。

![](/images/2018-11-19-rurema-whitespace-2-2.png)
