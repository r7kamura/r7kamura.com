---
title: 最近のweneedfeedの変更
---

ひさしぶりに[weneedfeed](https://github.com/r7kamura/weneedfeed)に幾らか改善を加えた。Issueを2件挙げてくれた人が居たためである。自分以外に使っている人いたんだな。

1件は「なんか相対パスのURLが含まれてると動かねえぜ」という[Issue](https://github.com/r7kamura/weneedfeed/issues/18)。よく見てみたところ、相対パスが問題なのではなく、半角スペースの含まれた、要するに壊れたURLが記述されているHTMLを扱おうとするとエラーが出る、というものだった。壊れたURLでもまあ雑な扱い方でも良いので壊れているなりにエラーを出さずに扱えるようにしよう、という追加の配慮を入れて[対応した](https://github.com/r7kamura/weneedfeed/pull/25)。道中で、そもそもテストが不足しているので追加したり、追加していく上で他の不具合が見つかったので修正したりした。

もう1件は「なんか定数が読み込めない旨のエラーが出るぜ」という[Issue](https://github.com/r7kamura/weneedfeed/issues/19)。Ruby 3.0で動かしていると書いていてくれたので、まずRuby 3.0での動作が問題なのかどうかを切り分けるべく、[Ruby 3.0でCIを動かしてみる](https://github.com/r7kamura/weneedfeed/pull/20)ことに。その作業の中で、mimemagic gemがRuby 3.0だとビルドできないので[marcel gemに移行する](https://github.com/r7kamura/weneedfeed/pull/21)という変更も入れることになった。しかし結局、ビルドでこける話はあれどRuby 3.0で動作させても問題が無いことが分かった。

結局のところ原因は、activesupportの機能を利用しているにも関わらず `require 'active_support'` を実行しておらず、activesupport 7からそれ起因でエラーが出るようになった、というものだった。activesupportの機能を部分的に利用するときは、利用する機能が何であれ基本的に先にそれを実行しておかなければならないということを学んだ。

あとは変更を入れた新しいバージョンのリリースをして、[weneedfeed-action](https://github.com/r7kamura/weneedfeed-action)でもweneedfeedの最新版を使うバージョンをリリースして完了。weneedfeedのライブラリを直接叩いている人は少なく、実際のところはこっちの「YAMLを置くだけでRSSを用意して毎日更新してくれる君」であるところのweneedfeed-actionを使っている人が多いのではないのかと思い、[Dependency Graph](https://github.com/r7kamura/weneedfeed-action/network/dependents?package_id=UGFja2FnZS0yOTc0NzE5MzUx)を見てみたところ、少ないながらもある程度使っている人がいることが分かった。

自分はこのツールを主にウェブ漫画の購読目的で利用しているのだけど、最近ではウェブ漫画を提供するサービスでは株式会社はてなの提供するシステムを利用するところが増えてきており、そこでは公式でRSSフィードが提供されているので、このツールを使う機会も減ってきていて、良いことである。マンガクロス (例えば『僕の心のヤバイやつ』『上伊那ぼたん、酔へる姿は百合の花』など) やwebエース (例えば『衛宮さんちの今日のごはん』など) では公式でRSSフィードを提供してくれていないので、申し訳ないながらも1日1度アクセスさせてもらい、RSSフィードを自分で用意して購読している。

ところでactivesupportの話に戻るが、なぜactivesupportを使っているのかというと、なんか便利メソッドで短く書いて楽してえぜということではなく、JSONをXMLに変換するために使っている。基本的にweneedfeedはHTMLあるいはXMLに対してXPathかCSSセレクタを記述することで欲しいデータを取り出そうという仕組みを提供しているものの、SPAが流行している昨今ではウェブ漫画のサービスでもJSONでデータが提供されていることがあるので、それも無理矢理XMLに変換してやることで同じ仕組みの上で扱えるようにしてしまおう、という目的でactivesupportのその機能を使っている。
