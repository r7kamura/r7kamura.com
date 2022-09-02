---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/d0Y6_6i1A50hXYHQiBd77UGCztUOa_grN1wueNzpcs1AOH2RJoX6AWJOVQ7r9LpgRIo5NxMUQZnwuAtKdTmkK-ZUCTnnbwNPEaAlPxl_5ATI0SQ2ggNZ1CI5pfHLwJqIwS35zJMo7LFGzeqXcEWxfJ0ZIODNFD1-w-5Dgbxf_vu61vXqT8_3I3fLkw "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/5NmgvI1KtkpTGMi6YHEpIAZktQMp4dj32OLhLwacF5qcmiDVBOhqF2CEYzI_grwaV5oK79n4JP3nKZADRgJVegYUyZV3sa-gTUxh5uEui96F6lIRv5hoH9YM9TBD-i6jNW0g2o8Q_c-I46sgCvXJb_7Lj6-7MDkxqUcg0tNNGLQ6Z7trt83tQ-XA0g)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/BGBNcQxqcQ7FtmX3zhBy30dGUICX08V_niXjRoIANWLlObz3luZXbWBYQkqLVzZ8rweDeYToQYHyD9Foe866y53gtdr80_VIKeM364BN-i27HedBOGNSXnjKTyH-tRDgnD6alZXiGamD8P484jNIMcb3hwYXlUsrDlVmh0LrGo_4jIEaFKzoZQkLaA)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/fCs481DeYvVN7pRURw7dsN0BThIR0c4fBBx93kEmZQsoxa7mDA1LdPkv4Po33sor8qj1LacbT3-ardeDOmveibi1_RT5MWXyycZOaE-p2Z12flbqfHC8zJfecfCkjk3Yn_7twIpp4eY6R2eXppLCrFkb9L4Trzy7CrIS3OuP0qyfphZK79IOpad0Kg "配信画面の様子")

![](https://lh3.googleusercontent.com/W3hMokx29GumdXQFy3n9dfPgrXSrozP2mXuynEVCkW0F7YXY8BFI4VK5qfH9k5ySakobgfh2lv8sEjIE7olAxD64iNn87Cit_kEYNeC-vygGmr3ihfDdQpPRzjKD8a2NoX6MThxjMYXOGgwg9GXRSWAz55tHBPbjGwCXQRlW2DNtlGzv5qxT5hcoxw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/6DMFMvB7arONxeR7fSYqcWQIx54aBH8w9TJ5Wy3y4mbVwvId3O13sFbR2vKjmhUw1exzYOC1Ou2J6FWXOVv8xN5xiDH6MvxQVgkhXQZF8EI7tYSv1x5LHVOXh8TPNqf_S7iXHitU6omU0jKIuU0HbbgoAOPF9clWqXflrg2EJv9WhLWDbVS3t_ZojA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
