---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/BEwktBO-NgDCOP1-kzVF3PSec_Y7ASejv6uPwoI867CQVGWPsCGe3MNvO3XUtmFNLJZ-eFNzPJdCc9d6-hC-tEG50eheQWQM_y_4xFin3HsERZ2rykn7XKxhB_9XnKBYQRwGsCRLr1yxGN5vAHekQbZ8jiMwBqi94ZT68QZAKcdTEBPJvxxJM--xm4g3dg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/F9-MXGhkeNx3fVtm8Q_4Lf9sM445TumP4E5N_QkA8LOkGjrOJRukAI8aVKhjLvm9btoAVK8rAkznKeNsSvTZ_lEpOsuy9oNwOCdOcdzNyshZvS60jFXEyQrcQwA0r1tjDybt6M7fIlUM_rP9yOnipkSOziyo_SFFfNkz6q8ALILTpTRtBEmEG9B_NNuhuw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/-fS5TmneCMCMPMZcwlRefM_2ztLS--DPMi1sfCthyiejqYLz60TrnG278HixGpfZYUXLPlJ-EUo2-GLydVZ34zXWI-DUhpGFAcqaaYSvQtvUTDqxeqZmjAh1QtKMJmDYb111t1K-9UGxsU5TEb6GBvCH4ckZ7eWTicFg2-hkWAJq4gaa8RQJsi5DGo9eiQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/alj7YjF_pQjbBc2mlaXykNkf1GoiXOob0oxXTlXIZrtZv5PxicfJSt2vEGJRvZiU4xQjBwsIB3B-Oy3c2E6o3t6z0AcE86xjq0QqOcRW7wdh2-xN_fY22acTexf_ku_ZsgEEklEpm3vCYDpw9B07dserzs-Sdmd1lZwUj-TJnAiMn99OZkIApPg2yvtIrQ "配信画面の様子")

![](https://lh6.googleusercontent.com/9fNNYDdR5yDlfgUbfJ6ZZYD6KuyfSZKVfrIhD8TMBtEFJFxz263YtBpB7sUHrfib9xGzuM34mV-O5A5aOdxMbym-AW3YtsvnChGMwcynVqxUBWTu57UnYcE8ajeKGzK9xl3GxcNqS9mx0JKItsQ1TbO-qSRsTo7lLI38_c2VIq-uFxOMmWzLeXtWAxvotA "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/Wxb_pAYYiUSeRVNTgsDZyaJ5a0EKeQuie0J5Q0H7BhSBkA7u6KQ-tOeAnJur9WYrOsnINjWuD96ZIKYTATgiI3Ji-rBYVk4vE2omV4MdjcoU05MwlAJd40GZfWez8HGi2msM4pZTK_IAtY3JvgPptDaiIVVcCbNJNKPdYP96lashl18PHb3Lbnn59pH5Rg "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
