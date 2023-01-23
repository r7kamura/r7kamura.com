---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/c4SZanR-bnjN3xuBAn8muBwgLrHi8VxU4BnkRHJIpKAFSRptFRB_bmDZ6OwURCVISXFbtRuXkaU81q3jKWFXPDRckNwruGx1xtOW4WByjWm1FsBZLNSBNUeMxP03w4JMWvTFVg4JqfKrXsb6ZpN5qPpc20xZ8GUbrA5hfMAYcZnWqzFhqm55TyJEJIPrVA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/xW_RzQzY5ABuPEjJ7A8NmD-D8U0aF1GUV2f2Vy_n-8w-2hBTR95xgczlP7_B0KIt-1RYqJh8IKowcLG9vqOkWTv7xIQiV-XFCCI-bTm1HVsYaXKnX6_Irugg5f2VDuscj8O_j_wMr6J7iHRNCKerzLuAQ1eY67lvFqwc9sjaSxOR65OQnmdUhxMfJ3umzw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/F44-32OVaqfusVrK-34jeYgTCD7Bye5FBaQmKQesFt0nKGwK4x57Om3_gmiylylLLFkbuspE9zLOce2kW6cqaE96xBWJhy6TkIr8cnIL31bTfEqP_ILzHkIe-RVdgUks0nWNIQjN1omkORREMLC6ooMYRrYwLvV1v0lLiNjQdgbJ741uwIa8voiIMZH7lw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/KX-3Cd2QFMacznCo4WKFTyLx9WUnqd4IAnisEQbHpXMv22MeFaa5KdQgM4tW2ggqOapARv8a28qUUzJzSI4_x6nAt47DYJwvoKOezM3kB0bCkdnx_zd5tyxjNvAPw1OWUzA5CZ8U7a6eXdPzTCicad2bcN8AirC_jpN0gcOCkT-5c3ThddV1JlaCeDvx-w "配信画面の様子")

![](https://lh5.googleusercontent.com/HAVQ5LJ9K1KoPf04mMdcwIYtMitimYlRYuTQmsUMGHQSNouuUzqcIKg2CMVqIOl_PG7R66UP49r6qdrlEq14-yoe9NB9I7hEzWN2yq0Rm34BJn4eUvdExw_CSLNxsaj8FdXs0At356TPyFQfdw2VYi4EjwpZaccJLoxyJm2qLxK2vfgXy9m3GrO4oGMyYw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/eAOBnIZ1lom8WSGxVgrsh4tbDSr_yfCW3Xr6v7nSHVe6Ih3FlTxsZ3ix5z49qusWkfg_qqY5F02Aol4vpZEWQS0tIKnGkP2ca-nhGahRhlpJtpDwsFy-vxiv97neIqCtPew2MtlcEBPy5VVQDO3d9QR67shyQxhUKYBeVxkDJBqA3MdEI1TWOtJHMDEyFQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
