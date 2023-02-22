---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/kVrcygn1aW4Mp6TouAmJEFyhns6SOG2agisftOG-3_d_WgepjbY2qijvxXTB_eFu-Q5MJ1XlR_C5JCeHizwdUvgvFvBdJBQQ4gA1OeMZl_j5O71mDTB9fKKO3NWW2mdvLeAs8hr68hhJva1FEHpxS3w "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/A9vbz9aLPPVmWoPvBsmAh0FTDlp4AqipOcgU4iwqRs0tIeZAHagvsOF0r6IagAR-1OdL4BZwofpNGCZCHVnWV5_NTmJ3gOUkMYdQg26XaiOEHjyBtZbAoZuDloVNFDykNlnOqkoSzA2JlYlr9n7u2nc)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/Xf52DEvYZ0MQqA536ociYSc3WVHHwgHuIxmU9NHUJe9De_BKitC5AQYdaiuNQ1rCTvj1B6uDT0Jr_DgNpxQmGxquV0xQe-xGP7HiI_cu88T4ACOMaNzoH6_D1zwQRWVLRbyA64lXH19xL29b_uqYd-o)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/jyjJ3pj4b1K8UtIXHdmL0vN9QYyAcha4IvUmg9mXaVS3uxbLky8UYsNmLCccvZ6EmMqtXZBRcYCc6xe4GMkaXDWiuSP4f0KhhyLYEiWVIj-a3qKI9ZNPciKXfR3u3CwsQ4ApUJ3ieGZLSTwMDJjcKdA "配信画面の様子")

![](https://lh5.googleusercontent.com/iGxImDARSA4rSg6FF0DJWsEuDNX2gTUiB-rIXY3TjFSHiZeJbvc6-5cmhnUPiVROcoZnbMZD2BhxJA1vPhcL7Uw3WIVmwFDPD_pgslEgIYCBEdMVNjXrZVDzsbvtaG0TLXT9dUkarOiju2NrT8adeKs "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/nKRIa0hybHYiD6Sw4-3QfTMUVmX5XbwwXB8nMgQ-SNiMqhr11FpyS61Jw4ijc3rpwL7EDME79xlK9fXaP9kEYvGqBYE0CLq6_ZTHHyLh5gAK2gv11G1bk1yePlSxTZlOrHzO8wHIoG29eACvVG9hDd8 "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
