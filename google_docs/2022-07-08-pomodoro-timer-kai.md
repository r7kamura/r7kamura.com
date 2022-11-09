---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/9oTFaaf5u5H7k0fVaCK-KDnO_t6Q9GoD1EN4BE06CxSdy4PC3y3XAFsGbSSxGO7ebfz8DkmKJs3hi49aAuhXUmLiDMmie8HD_fdDerLPVG-I_NIvex4WuhQrBn-Q4agaLHzYKVp_AmcaK-afwG1_4wd4Rrc4jE08mW6HKQsTN4DiPvTsMJ5RfuUOiWKRMQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/sUUtgQXQv7eueBsL1vIUND2SbeqFO_lL9ZmdY4-rfwaPowV6Gx6_o7863Xx0IaiwrjxEPv6uEe9jstS3pyQ8B59sOihpcIRwZPBUiE6u1Ncvc-A0lQhxfS29E74PX_aqj8P6StHkprBQyKcyuefJpMW8WEnESMoRu9oxT_E5R_D5f3j7-c-d556Xg0RVoQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/hOoNA4LC3GTyIYsShC0cijYrRjiKY9Gux8tQK2L9nyv4v2o-sHvgGFA7YYy6PVD2iGqMQ8GCYuievtWIUEFYDc1kYi1iq7cVo335d1dbCcvtLLz4Ry4P1Oyt5P3kE7p5j15SSlNFO6ZW7vOPSZJ1iK9-iaRaLaJ140lHS7EFpmiXII2Op8DUOjZ8g1LxSg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/oMl6aGqK2SgP9NE1I9yEnKLxSwGKabEi64iA8Usg_CzeY1oZXjO6eJ0MNv-Uf3LU8BKPciaDePIWZ5fgx_pQp5iz85-x2ePZ5hjPpZ6G54CEogWSxcz8Mwf4Al0BPk_BjpBfHHmTmhcTBJnz59CU56Wkk7vp9Rsoj3QK4we1wTZ0ovmQXL9xg4qZLa0GLg "配信画面の様子")

![](https://lh6.googleusercontent.com/2TDjMUFA3picZpsf__WUo538jkRHqrGw4K65JT9TFleIhVEWLvlCMNXFtEG5kgKldyi7TcvRThDU8yz1cPPT-miygZmo0ktcTmwc6DBPvHHQJIi9woLvyX0UAcJFFKNlmoLSRq2LpMWEYzukRXeBLS7Zl15bvZNtFAR6_QQTRqt8Tzmcnt9WAMcEQYwbVw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/Zlzr5yK2nFXPJipMdAMYiYNeIHIzFq9Cxe_RIudJy6WHz5knR0gzbIasNrlPNs0NR5ZwL6oMI4ljM4FtPRCNXcgS16_VG_sxCdFg8mGHWKWhSy8ODZ0oOKMwziFMjWGzciJd5rEHAGvlWHeiYnjahs24C1h3HBAYQjRRasrt5y3bYaljkIHMf6GqjFizwA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
