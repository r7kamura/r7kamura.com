---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/bLGWv2oiHuVBEeMMloyzX7xgoufleyjI1m9ktSEHnGe5lsGkUn4mAeOvGp-mD6FOOUQL2dP1ZxOC3-WJhwluU_eF7ddkSo04eeGE4TIgl-EmXFLs7k5GvIWwM288zqsqXQJzwSd6j3tpNKg-FHMq639XjW3BK4WQz7fVDpRQTabPkzFTFEpOFueKlEsfow "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/JbmjUZBf0SAJ8JR59MRxVhZQh4EfnXhZDSqGVJNUFwyDTluuTXmTkOI6WbFKQ453C8oQUzkBjg_JgB09H3dIvbmzEtMpSXdlhTrUpeOe9-_za5eFQSeUwa1C3-ug0wf65cS6KztY-vbFZfq8xfLk_AwGZs4TIcwDr5UaXzT6gYj4bwTQdh8VxA5boDEbaQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/vA5tghCW_pXhH9g4y75FzbNnqaNitWRsE40Y65llJQ7MYjqzI8YsgUaCEI27so4TT29299HeHViukAOI3USwKMnwzLDhIU2dSl5Gvlp_t1RDp6koMemK8Ob8Av4uQUdm9D04xBdcTzOymYNzCXIFbNZVmxxMtzwrQa0p8uWXE3WXhOuX7X5-HMvLKDD3nQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/m0rvWUNRDxNDcW5AWjNUJ_G2Fu3OMZRrheYE43yRVaxnsLnEb1F_eMnYejZF0RBPgNgSMXZvDZ6ZfDk4qf6qpDhQ9gvyRxVqd0lZEx4sHXR1R2zKV-jYpKge3uZWhVjlwsS611zt4jQgl7L4IR5-pGy8kQ4ypcOjEaTZq--vmVP3lvyTAky7-xeAdBnNbQ "配信画面の様子")

![](https://lh6.googleusercontent.com/gh5UY--1ioJ_smlHLPwdI14bsUwm0Ua8zSLolX7PZNRy89p-WI-p5SPcgjRUz-YusQiAjpSwsYYZadPMoKUW8JnUSeBY7xvobBK5rbkeYBnyEh661LsHTKC5RFtoV6qqmM4oI0NR0qjT0cEIMHBrGjQVk7YZWGtCETVXlds5kbgKEb0Z6j8FvAKNmWLzJA "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/8JiHx9ZmwBQ-AraUlmQZlILDnqOS0hRqIW2DrRb0P0lwYS48-4H4sLeOnMA7VnhJjT-XZS2p5Ek4jvf9Di9RUKD0_9Af-ktqRg7BYlbe_AyZ7HOiwDzcvy5D0ZXiAAmLXWlXNFWZZMcI8Q4mnq4qvHKkfIIZTlf6T-wJrc23jFaiHXYI8HX4L1kxHe9Nlg "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
