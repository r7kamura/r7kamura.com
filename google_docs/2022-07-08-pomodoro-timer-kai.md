---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/H5D6xl6d71vqJSL6j3jZYV1qt2G-2bZhEk4KWZOePiEEpbewkDu2A6jFl_JWz6YUm7rkFniJCTQnT48Q5oHeCH7ImmZ4L97cvKFNOpjROjgBhsJX8SBW_T9commin7WtlGjkpHttQR8RRsqtZJvude0 "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/WH7zOOcPRXZbep5aViWwyiM_SW5yS17Rho2tGvxBt5VC0b7QMxfn3r1WmSue2pRt7syDXpfz5bclZIO_JBp6DCWSc6IZXDWfJu-Q_5FGwb5NwtWzfJv-JCmcjFaxtohKary5obJhS7h7n5QM7nMLvzI)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/ABO_YfK4gRYYyb8eTuuPy3L0ZnbDssMt4yvzg_W8l0VeJd593lHJ56hNBpy1c0yVYFYq4VAE_V7rziOR0xRwmBNgBsxMmnPvsc9r8-TALajxE6Yov_Qw3E1QSCSp22EbKOBsQYOVi5Z3a6hf-98KaEY)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/JjZ2bVlI4euaCRu-OrKLHqNMgtPcsZEUdwgp5-D1jCwtm7gP5iv_ygIJyY3Ohfp9ZglZMDfy0n1QLuS8pwqsSC-fy4gLfa76RlsnF3TDVNZWfTsHOaHAw_woYgzes0E1TUx0DHdKSlo57VNNMDFosrc "配信画面の様子")

![](https://lh6.googleusercontent.com/yJCy0eznY9dRf6cexrx80xE7MjnlODiOXRh1JudcvB4lTatLBgMLLu2l78aRBb-zgxJKuKS_7pSRBYkbINf-joi8uPjCyD3UE2wKKsSTY0XNPHx0Nh6YGbkwXzApjgQ3gjNNdVC2N8kav_GkVkASq7Q "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/v_IPjaJ1OofCAJb-H1BPhdOsah0nY-BU-vzsB8usCSLfcc1dD0v8QPbYUVkmvy7Qrr9uDAvlV_z-QWqPXinU4jvLdM8mqNBTX3oYE0Mp9f77H6tAzZTOQLJ14Po23jtZzQnpwU8cer1dIIw3YulCJLI "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
