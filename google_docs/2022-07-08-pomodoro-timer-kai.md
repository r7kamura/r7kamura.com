---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/0N9uFssP-mU_w7EmGHJ_7M5U1Spbs86OZsK8rdP0uCpTksZFF_qxUzqOjSdbKCUQfWb2y1DynjvSzk5x8T1b6xLqPt9_3T0rK8trdF9rn9m1llhAwEdqtgzWlADTtP-eFs4Mm6SI55cEGpL8bYzJsmM "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/QMjypYn3gszR2zBAa0vtBZn3yFZepuN8lQ2YBlI_ivkmVB-NMs9hYKk8oqBNMT0-tFi5hwvUyw-2RZg52O84La5iGOG7ome4J3fzdXTgB57dWjxCJkorIJyPdxIKExY_v9JBkg_VlzpEePGq-oX5L3Q)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/6qgVLykYxArFo0BdYgEN61gtvglOSsea_TmmxXrxm20qIACL54sswpjkKOJXwj9bS1Lmj7XQ7Fu6RWystcAvW4fxSdnljJfm1sNz_onsbuT9bxnwl-X7WyHmRyG9ocSUmtTEe7OAGZ5KRqaYQbd5cMY)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/EqPge1d6VqfQt3grnZ_mFSSAsoo16PhVmvxPRvckTGt1n39KkfD0KRJeL8Pyez-2OHbA_EBX8avrft5rj3FZHkQrejnLRVtDWXlTA31gdBsFbj6OcW1769zmwYONlxr_JQVVlvTQ5U1Vkq4SLz_18Mk "配信画面の様子")

![](https://lh5.googleusercontent.com/LAHO8144KYgNiLvwLOcrYlL4SfpiTBcKK6dFYEOspsOJ2Fcp6njneBS_iUsluS_DE-woX37mUcM0gsZ9_7pknHHlEzU0MnIEnnMzCHmA6JeLKp1jLPS_c-BcYXLQWeyGHMefcA9sdwc0AAnwey_WXhQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/v6BcYgTyVMb582mHpFQ-HZ4K0JbP1_wkv6KsN2M5pUKoQLIfMQ6GCVbM6b-bHUGPaEjSHPe5tSrGYNbPV3I0c1uQuo9gKOXuYR6BXR-qjpwQ2iELudlS-Y14iUm1Fx5pm3huCFUldlF1pDYLTb6Ds4o "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
