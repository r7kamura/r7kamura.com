---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/GzegvKA-GoEDOx4vhcKup2Czv-kI8fbTdHEzHSRoeGjMoilNHYDqbLkqKlsBauK8RwZxcnBiUy30OEHPYkugeySihX0dLWf9HufsvtK9e6ASz2FO7ek8LAyB0Gd7--E8YgLHN89m9kIyyv1ZDZMktOUUqKQXJUlhN4QN74URYEC_vPKe4cCrX6NFW_n9kQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/uqSNfeIwg1tA1oxCNocjmJTs8Mfuq_ww7mZ4cwNuBwmXgzMCDokcJffQom2lXBapJgspCQaJVQv_WOEw0LSv_rP8SJJeLDzbSDcWNxs-rpj-ZcL5rbSKJi7SHHVhs46DmeZTlN6YToOR7-AfaPW2GKcKgaG0RbBZX5mEpPfl7v2lPDy0NX9vLX-hD5qVjg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/zwgaJaM8n_9WD3xLnCMyuEfxdILKh1UPihoy1umCC-wtxazHDQy2eV21KpeI76NU5kIQvoZWAC0zKP9zZKuQblU9c1udDMiAPpCGImsCGxMhzskZC-cOxtQ37o5yZLJcfHd5GAX3MrdFJyMq_qLTo7HMxV1OIcj_zQL4QUB6yr2OLjORhxZZ7nplSUofmA)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/Sk81mgXzl3uPuxmBMYHxKfU946LP9JUT1p0eMLWXBv_GvvYEF5kFNklxZw7thExdXQMOwAxjDNbND_s7G3byMcuZ090V2wzlC8R9xaiWSfRUaHb9YoNS9De3RIjAhXXfBHgCUJ6jfXPlnK1ZubUqzsk4djse0pCjqN7PgbiWoUaFY-HPsSBsocbj_1r0KQ "配信画面の様子")

![](https://lh6.googleusercontent.com/b1xJ7SijaHgUlsZnVP2G5EzDuXdOrG30TQE3I9jtdYld6dZFTsfT1X5MlFEik9lt3wo4fRa4vTHTiGbFT2YzOqmEbgfRopFlhXsuydmPB5MEUTqee4NTcRQ3ab_7rNYUf9BQhJfcS6qIgv_315J6GJbim0ki6DFrAoGUN3Q1JoPMhX7lO5thg5_DRh3KJA "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/_hXkFUzxtkhouNMw6M3dK0EbbndmewzGDBLkROXO5AEWO80pHm5w9zyxvCzi2U-wuUWpNEtgjR91QoN5bYzj8XFXVHpHZ5LevZBhGZ4XtbiRs_32GlrD9ki3aCzSDSq34fnsvx6nFqQjn2dHSxXm3GOcCcdBnJM_OXMYCrUuXG6YF5zu8kfRpgR-8YnBXA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
