---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/poK0mRGJIBDQ16nVT5VJqopP9jaYbKszYye4ElkRAMcTme-SCW0_BYx_zkc-NWPnK62SHz5gVaxNXkBMRnECD7m5YFd7RWc8Sn39YPUR5vG5DpnbH29WEdBh9sIGD8FfSGApURg1NoXkkPxckWfkKBc "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/tFgINwZ2NyIrstuCRO4aTFoyqpe053MCJucZBfmPuwZq4L6I7TX1IL_oJkMz60G8o_pJ37y2V9dNY_iKutfhKuktYc9gvVPgJAn05cHCPbM5yI-WPodb2TbP02tuHGLrApZ3uHrGTWLGmmSNL03SUKY)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/gtzn9yX_ATC4BHGpyux2izqtX1uk6OtYEmYZezjWTiS_CcXOCphK6Z5L1myNaRan0r-aCbH617a3r6aYr2S_B3n95860s0SEsTQ500qGi0NpppPUCI5E_6t6cV6LCtxG_TWTkz_ac_Wd-nlnYQ6Sszk)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/D3XW20EDFO1gmheotXkplzXOJYGhqZqWNPtVH7KorsOUk5o-kzijbKbnYj5xdjRuE_7HqKA7vKb7tuw4ESg0D3iLjTRDdqp04M1NQfOYMUr2HGw_NqjTg0nvUIFFWyVbACUTYIKp-OlIUIl1sI1YDJ4 "配信画面の様子")

![](https://lh6.googleusercontent.com/ZkGjsJk_gWpqfV2v3zaWS_s6oJjoibfxUtOB1iiYZudVLiTJ3wZAN5W3_qpTkIauv4bMS8pdetwIwdbrOdPyi3xdC5Xg8KX5sFG5Yr48DXDXVMs2XgmRJ7X5qj3QVN9Q3zHBwGq3z1vrSpr2sP00IiE "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/74uvlBpFaJHzwoeTZdiF__6vLFMzzLYKd_8VHRmn0lUdir0drNOj0WMrDrfQm4NZyuVm6Lu-hSYz8EPL78D7eJkaKkSyHVYMIl_QuhJfr6UR8M1HZEwnY8e41SKv61kOFqrT0vskNSIvit71i5QkBj0 "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
