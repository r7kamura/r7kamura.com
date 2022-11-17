---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/6beUl6nubI-tTO_l-8neMxWC0Qgxupn7qhm2wb8Td7mlsysaOxXvl4jsECG5tA-0uRkLPG58hYKMaSeT7TK9nsbUMjZ9MUxi7nzq0njU773rY2qkKAioz_bAT3lTtKGp3hGtsK1kf1CLvzY_NOIgYdhoDnQNyMuyn5obgpmkIpw4XYLH_ftNe35lLBUUTA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/xUjf6bzGzs1K_FLva6qjMx7pbOA5mTqWwUXw9M8piwXP8F2vm-HK2qedQROv7BB9No_jCpK7OLfg_PcyW8X1tkZERbZHdKI1yFCPoYdIdEYNbzBZsELMNFXAhaUoUHsOIZQOVXNtZ8AeOlvnUi-tkZ673tv3NGyQe0ydfOzxQcAqBNo5qqa5PVOlE9loCQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/w8wZwyC2UyPXPAPnxkjHp0jlQiKDtiYNWoaD1TM5mgOcmKu8IWNABYwz3x8k1w2XCdjQu1pRQgiFeXNJ8-PCXkfJaDtnyUT5NRf_6qkv85t20-UhXWQj5uL1Y8aYvOc18VgzvGmlR8nkN2195GO4ygrGyeK_Ry5jh7WALIlRyYZI5EB-R5tumqHYFdYaQA)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/RcnRo1WtBs2_SUOglO75RfY5F45rxUxLUSK4kRuOJjyQeUpiXp5hxijWAidBPfBdmwedgmyBuRe_p178igB-Xp6f_IBG4rvrQHpcnJresos8mId-phBVXRzfW2Ph5WQxVdIb2mS7sMATjOvOh9swF8jwId6eusvMzT2qiKLNCfjQt-Otgfibfx8Oyr6Lqg "配信画面の様子")

![](https://lh5.googleusercontent.com/9x0ctucxKeg54OZWA9fvI-0HIIp6VoXRa2p06eExV50ABNwDFSwBSbjBHvAJz2DhIDWpdJtm8EpEYI-tcQ2m8LMfEUgba38cIZYWGgnxka_qnet50MNjaTTXD8Xl1739_Rcm43LD_aOdv0loItONK3mtSSC6E3AnMmgD7lSUNVHGvD84faGr7XUzFRZWfw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/y0fFKvFsUSMouDswG-S-UZUAbUrl7RBGxIuh_h6cAPPkVq5b33u26E79VcjouCWie-aIh8xqtRjN6IXUNSZNFBSBR6gwMldv7Ppgw5CyfipNa3slr-4iCXHxq2T5ys0u3rU3naAKD_QE_lTMI9z7j9zTjQIPcxivSvOCkxuzF67w0OEBEN8_fp3pR3z6cg "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
