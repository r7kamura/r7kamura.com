---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/6xMb94cvRqN9ASl12b1vnfknxDNl14bX1Cw1PHgbfEAbhyz0OB2WzacdcGiAO8AsYX0moHWCzoaBu6pbslUkDRHzaqLHDVZt0Nsdc11FGS3wVx59lqTxNWHaAppDROH-h9nHmfDyIB0Qy-TKtc98v78W5yJER1VXKV70W4Xwhv9Yii7tFSeno4pcUQZ1JQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/WJh7gwEKly3ik5NNuaHBMl8_N-OFdMEn28o-O_1c-IF4EKk53YHZlHOXa6H6Nxzbqiwr11fp7FBNhcOWSEshnEVlMBIO4z6wXHhvv8GXgUYpeXmudEeuH-LiTasmyDknmzxThc7cc1MFV9wuIcYW0x-awx8v9uIUt5e0JMoJ6qQ0-UQ46LXpPwZv49961w)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/fIcMEAFndHQ8ROof4h_LCyrp7tZ7os8j2DFDWCkVoUR8Ojijtuu_eD0EaYgkDz8EJEfU6g3QL0Arl_BHr-er2FR_UW8aCeHnfvzqe8QBiNud9JoQj5Ol0BlV8gQfoDzPiFz1cQjTHgfo_k_oKLokV-ec8-a0cmDBgek7mqrKmZ0_lhLcc_oBA7AH0amslw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/uTk-2w5dpGbhQP_7jiQucn-vNB0CkeDrFFtkh86chWebYTtzc4aJcjkLLr3xub6UQ2YCYLbNRMURKYpUkpe0iGWUP4aA24suRYJGbxM7ACvvGrpTx7oaXw7t8x6Mv8L77nY_B4Y6G6DmJqT-Hkp8DolKPvvhVYgnl0MErgcyYTv2pqjii2LpAVbiqL4NYg "配信画面の様子")

![](https://lh5.googleusercontent.com/rQnAhR80GTlvvQnM87HAcBMo04LJzp19tsW53nR8CWO9A9N-OfcKuvv9NK804dnEO0gxFpfOTGij1j4Jff7bmaBewWzOiYWl5oCUkUkDNMgyv1oj1XA7Xksd6A9VWZtzA3RlDoZJB5z-s_DNBsEKhf8YBNmeoPNItGCit92KSUX3kpoLeS-O8Tq5KZ-5qw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/KMQIT5IqiSW1K5NEGGun93YIwBNKJtZJKN55gbravT1CuIZxYN6Y4rfTm4dd-PXZas8CgJAGMEFU15JZYyhwqEvWMsXTm6HpqSl4p68h2x4VI18sZddqDEbP_Wv0kjlCRwJwt5XhetGN2A3tyGOM1OAOG3dR540yUGTe40CZPtbK81iw5zRHsDS3JvDv1A "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
