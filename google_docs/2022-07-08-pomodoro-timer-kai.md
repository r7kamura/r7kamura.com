---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/wsU5OnMNCoC7OPtUMzhjzqx4z6qyDH05D_s5X6zw-FsH0WKIR6hN0lkOpSqjgqdbAF0RXa7a4_qxS5lVoRuZjnlLrHLDJThspEOMPFd1mUfDo1DrHYBC1ANaC7qqjqq5M0OD_0Vserp4DVdWCsR536_zXOcTKrauh7INDebx5hUvTbbZYIZjFCaWpmRoGQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/7kf6325u2mg8PBTGFwwr9k75-COAZlI6z02Oa00theyfSKtNHnFeDeGI8rEB7zLN_AZ32bfZoUivBlxNRlAef_PANfQgEaBttKRf6cZk28DMb32Ind2znTkV8sBhTRFvgwQTWOM7Cem7AJQB3-iRQgEdjtEr8BAPr7clrgbu_bgifSepx8wSYDSh7i0yOw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/D2WRa4lPIWr0--9k_qbR95JvWDEUTGiOOaLm2blGXe5tgCLY3M7ObxipRNscY1BC47U7mMscAhUYnr3X_jDLXqsMUqkjsa4fQMrXSX2uHRqgGBnekcFU1eDUTqYcOHyDTsYeIcOg479QnxwYZkvfLs9g0fUnWyn1y3cihn4izIrbJxHPcEexdBnkOpgQIQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/p0RABwUbxX_dbnKrmshgWLvBIgK5xXMG0utqar3ykaU9CEyzUqqc8VCnPmqyZpzLryXVjdezdS_hHiZLCYZR1OGNrbXvExKZm54ycARVm5Uk3PDKzv6FxvXlqMX43jnlNgkNRv2nj_9F0OXubuoecal2NwbI-gK1N9LURJA6ddBSPV0eDiZpuhLjDwiIsA "配信画面の様子")

![](https://lh5.googleusercontent.com/bKw3fw9XqqVkrGA51IrYs5S9dMsppD021evG6Qced9y09oSgWZqmOWHnxfDLr4ltqI92xlkQhg3T_OOuRrcD0twxOwYGo2q2ZUuwlBpqxQvrG8kWqyDEIfAXgsOr6zK4k3rLmyCfTiKDgXx6hE_ojlhR43xjGkHR9FjNnEsbmd42gS7jHOASvkMJ1qaaXQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/pq5T6chj-yz_2L7fJ_rrWW5hckEdfFvbMrIatjH5K6eDgJfuATZ1EYOcEtQ_FBjFfmk7lca1Jt83kO77M5QXmzoTQRrXKWEGZd_8i_9wA-DVK6-hcV-VQUBUnPYkM5O7JsM9Isr96uSMK172-jFZeC0tV3kC5YRo8wH_hY1UaTZ_bYnPspB_27xKRABeCg "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
