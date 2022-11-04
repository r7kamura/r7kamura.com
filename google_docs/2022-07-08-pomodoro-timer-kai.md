---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/ZXIuOZlw56PwPOUoMyOJYLBw5fnOAXwEUy-eq1KjoL0aXI4iOr3sKXCskMWLBwsY0uiavVtB8HNc0isMxVTKA-DIdnF6e3V7AUvvHqp7gPHS_TsQqBwG-EVa1dHEkvvJBkpwe34F7IUd_KQmWgdJ_zsNT_SxJGk-7vwFGoLQ28LJGZ9OsPcYYhcT9zxe4Q "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/OC9mawlM72B5NCFSD63wGpyDwRBvUkx4qI8v0mtkOAKT2LhsIgmPFxHA3_9cFE5zHSnnl0qb6pTnsNjYqBYLvhJv6Pbef_Lu613l6t1HiKZL_Axw6wvcIdcbhZrdXLfjHEl62WlekM2ldxWASW8lLQjKkjbKIbG4ImqhKsSGODw0_Su1nO9pah_uB_QMSw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/KBldVro8EwYnlIZB5apDGGceqwVEiqDTMS2N7gFQyRP3e4Y0Q6XhHF3pn_5rUTrz2b2RDFch8OjYbzgVRdegpR0UgS31dPVVQFQFMM9YGxpc3I1952WJULtNnOTjTVb5nnzZo1Yqfahw2gn5EJiOwLbF5qZZlYple04lMiJtCSwQrFSw_0hY0nOJaQ5Wnw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/YIZVeK1d6c0Vq1RktmImJ_RxdyZxlKE0rDLRK6vpn_e9aWzXE5pMCVhOBI33vP4DkxpVVodKzowL8Y1Ogm8YCgz_NX6NgnfAzpyrkZy84djlTk1_kZnAjSlWWMdI7toul1lP0-lL_4HnJFog_l7EFTYEDL8oHa2wqyDKSLk1Nl7n83zBxQp2jDT5tXFp_w "配信画面の様子")

![](https://lh4.googleusercontent.com/yf7PbVjDfgNuLGXMfbvwDID8QtxfUjTPda8ZJZiyA-86hWvJhmyCPUug1wFeEDigPKDfvpU0qUm3IQ2K-R_HDECXLugowv4XCF0yGsgUgWMQf_wX6F5LsFJCANrhHgPfuA6ElWbnlqlxAYJ7n46eVPBNN_kHXn4QNwT0Z1ASRS0cqfIrouqxh2t0W-LTMg "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/Bt77v1o6fmUGrHjBJ4h47Z21pMraNDO1PMb17hgMPSqXr4PMy9QNCfc6Ept5PavmbuwqlHU4ddPW_Ig2bR-VaKmpQTrFhdPPRstfaliPnAgZgXQQIPGTr0iNg8zORBjxID4Bro6vmF8aILG1bABap7bj1G0gvwzdCA2VH2DMnmXjJ7dBfVt0ZmNDjcO1CA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
