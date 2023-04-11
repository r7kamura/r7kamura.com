---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/-gAivEhxuf_tN-PMr2P3E6v_mlbD6ELdOcZXzPe56dt74F8ZFtG_P-0R5_ypwO-x7-qd4oGFpyd_rkJQxNbGhTp152Srl-2YANmNg-fXtqEjR8G6MUemb4guT55rlO2gGqrStezzHmiCojA-vB-uuv4 "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/zVQPqRf5ghJHRXmaiYTPCSx1m53dHMaeKxTzqXXdrg-OA0NNAHka2mWPT53NMJjMI_LGKJH1h-ymHZzGaR4Re4u_rEV6TjB6uEpMYST_4mda-dW12WZgi0TMBpcEGyVQpiT3nv4a3dYkRMf6zIKVcL0)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/iYdB1dYfbQ7F1EmeN2YtuWRaV_diMCktqk9-X9-JIFDh4vDZcSXT4Y1lnEE6MOcCBFLuzi7fBDNSO1cp8br0kJj9K_iBau1tM0zAN3iW9dY-CLNfQS4EYfXDy9kaQiIMXDfX4J9SKaduzIYQs9sVSPg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/DCD9nTY4aBm0jCfzJw5SkppBCKSyWYwv5oy40CWQ3P4tNsNnrOPQSmnPXNMVsuNkuSq8-IhwK2oBdmdLszb1l5xDjvtxA4D-kYi7aZMnDB0vz8IqkdyRgTEhQVa0gzYDJ2uctK-PhS-Z1pE9ulDLOO0 "配信画面の様子")

![](https://lh4.googleusercontent.com/wP_mp83GQsFGJkUVPbSuL8DUbZ3f_5XRfLdzRnNXu6FQy0GTU3-eWHt_BZnETse4mAMw8AKMtJaL52QrtHBpsURvIf0VfYq8nvxhEmo6W1QcsnauNx34IjNkb6vncsum6sw95JN3QUwcJtqO1lMa1pU "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/YvYUrJy3gyPLJRbi6dApaW9_OCenOxN7_q5q1iYIzB4no9v25cHm8kj0TZFefutLqHQS6VT7lJP1hDg7zwUeChHu48tbd2cSaPJrE86HQjc8vhRtvwbXIBpym-NirBTWo1_u7ATcTbWcMNne46QJSs0 "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
