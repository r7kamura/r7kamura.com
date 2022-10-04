---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/EIzNIexYG_QRQr_ypomTiGehbGvRdWLD2NKUjCniZhxyhE1uX1fx2V-Pa4ynfetpJgSFeSZAh1D0Fs24xGFf15mx5SeJGkt8VsZI34F_bpq48LxU1YqTgDaAGQQ1VS4k4_Mq8i3ZLeSlz4FfhUy4lwUEin0HUQMHT_JzaYHLAMe7PyHPIREwteDl3w "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/yznBwL9hHtMLXVJLOMir5im8_GscuXVvCZ1lxsqYaIGpkB8AvLCYVjk2b6UlGwWh6VtdAS8RZ0J4Un9WlavprZCTg0Aufwi6dwNOukHYBIJ36xuF9zSqu3Evvunq1YCJTg2yotjNnWPv622qNkQ7XKuL8-ay_WRpOe3WlmMx5MITNDH-lxrdO_jQ9Q)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/aV5tz9gbCdoDdXpio0pXTieMFy17mxJC3fSgNeG_DHMtTWR3n_947WeWFpmE811oZIMBzCrAAGeDGM1lnZ57iEFCekw_8B3ThDogvrzf3F6VCt5MvxHb0Cqc6yMMQfsQ5T9dwjR9-M4jgPwMWw5Ef040rPrq00PdudL8udPpege2ZH5UnGgpUIGhog)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/zLyliEzNcBYn20q9tqeaveCSs3VgyfPU7iDIUsiLr9ZPozIFv917eSUi_paxx9XjxM5IpTzy_EBEo2IGJhA9huxC5mDsCwTwBlKLq6X8CSVTBmhiJGKQFQB4zP1li_Vunge4LC8zP4hOr1lTpL0arebA34_nRIFrZ-xzfGmHcb0HM_dlbPPYx9_VkA "配信画面の様子")

![](https://lh6.googleusercontent.com/3dF8erOAeAeiDDVawm-KkS8wYs_qyQ_hf24j8syTXUhab4Pi6GxtUkQn0TmNZNcK7HMWpa1VCDMpc7UrIU4T54wIXPERYGZnAXPFY-mv1aHOlS9VPHjb25uEoIgOAw6SjJrVzILJGJaU850u8lHRwdNfVtlUMxF-7kuHawn8lLfVVGeBcPemlsRcjA "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/n9FFWqCCr0SJ_UGquVRhM6b7NTIUVM6WGnMHiyxtZzNULi6Rf72n05uD8Gfl8MvwGkMcsVoO4FedClwxgNLiSDgXBP5V9IkI3a_1tlh3Fz60DR-GgcSHFMZ2CtEWGM4iZetjCxLcgnl8pEkGPChoP3qC0p63t7OfYwRBwl9c3FSjQQc5eauhFLtweA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
