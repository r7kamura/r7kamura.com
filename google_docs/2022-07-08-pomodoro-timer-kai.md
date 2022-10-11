---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/-3wSTLMpsAqJkESyPidqldCnBtluQgpQUn_3YB64ahdS6v6aN6TTO0dRln_2T5cagTm3CO84_I27Pb2VAtWXXNC5jsvwmrs14BEmq-kvdHOyU37JUSOGOm1nwxbmskzPZ6uRIaZQtCwTCrS91BEiorlAHA6CrN1C-u_E5LnKg9DQ-c7yrL2riCiZAg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/0ZC501gYI93sVe2G5iQVJjnUXA8zB7UmRTnolWsvSMb2PqtVs4x5zv9-PoP3GdlvFTozZ473N5kTVkTGaMWvNE3Y6O7KDflQh7QkKySeY_SSqaXco1I-AdupNN955-ldhgt7YAX9luxfhMtvGwQEHVlQmr1LRz46q2zhtfiFnSqt2YpG5Wue3TtmGA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/pg7sRgiZaff50HocQ_MfhVqJGsZUrmqmEXXp8my1WcfutVM-XjnX6O3nCLnp9yjG7KjXN4aDo9Iy3zbH_8kdbmTLv5hHSmQ5AccT5XtYWg44Uh5IT-jtwzhYRBAjmc40qdysB3Sda_5kQ4GTBLLN5dc0X08ulGV8gOiz-qxgc12y1W7SXfoMe72kaQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/cmkMatntpSh4vP_zIcxn3oZUNZgC8CPGYx4EemyucHYHNu_Vk4Gx-4keeLcHLOonfUe7kCCn27chhzB1ENuugwfllIV3Hs8ONTzKUCNk0yMfDnVa7CWI3vSqlgy9Qk_EbiC3LHFWgfS9H-oMW1FQFvAtk5v8O4GPzHBGhNHUxkQwTdMjtcTpew_pPA "配信画面の様子")

![](https://lh3.googleusercontent.com/Wrkh125R5mjLZRjGjTAxWUt0_THiTh5S8mrlOw2OKk6sRs837cnO95o5VdPkmHfe0-5smK2LgkXmNETNtrBqbUeGJnnHjsgxFlCzeA7Wt-E3-FBO3wFB3nepFt2B440r3mQlKscb6ZJ_g2Iw8FrRq-Aevlf4ZNQZmBhohffiMN7MbUYVUzhr7zuhTw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/x-kE78scsRsKjQ2XCHXjg3KuDeKjvntPTlfal5ScS6QOQK90kOV6ALTAiz_a1jkWIRt5DiS_1dyPEhE_Uve04Krvkb1oz3PihFn4HyHYdvNhFOHf2eJnnwe3hDB4NefMg86L7M4xXWT-HDSeYD8N7XyooFfUbfmCnOVaoQUGpSUKO0Jz_s39kPmdDQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
