---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/VyCDcQxOVIcsGYnkbqw5UK70CzVu9zuy-ViRZ20PMT_rnLSLaB0xvfQqcW07pGDIUXH8TcLFu_SQVcfHPoQpxBR4gOI1zOZw8L6-IFMR6ZaRNYk2_wYzhozLoZ9pCg1V0PZn_OXb2j2-w12SqTRcP0sWD4TjnMjNGCVWRN80R_dMMGh8LaHJTJGQKVlwwg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/Co4LJa-h57O05aSw4jx5U7A7pEuSMPpQxiRLPdTHRJ9cHjAirYnOX8rSNGfre8nTArBDKCxLp84QVGseat-F4AcAzz_imPNyBrLVoqSyP_Zgey2QXBiyby-JaFqAjfKYjxUCjJEPlCWuXtt5DitN0jixXSnQZBK5IkUmsqgn-L51acG-WYTE7dIrQpd62g)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/tzr42aYFNl6SihyCSmw4F_74rzZviM4Keh0r_cG_5sUSioAeG_sw_d5TaEEHgAPg2bMIre3GjYbJD9tMsueVn5aRnqPmftoWKhH0uG0d1atULtIg4218yWfXyM7jD8AEbn-NmfN-__KQm5-d9dSSbF6ncxgne0aIkGYu5na6Q_td__aJo4x2w-Fm0q3Qzg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/Y1G02JA6Cj8r-t8owkQuadco0Xvz2AWXv8qJvW48FmZak7fLSpkwvESc-ySbKIjUqJIuIDELBDxCxxZ7J3TNdpzIvl3m6gYpAobPFIAehJBRieAwbQgBeHyDOEy6B6i-ml9rvkC3FVND6Azqt7FBhgvNjMBlxWzBXEB8fo-KLSFbhB5YgqIdPPeszO7Hwg "配信画面の様子")

![](https://lh4.googleusercontent.com/QSOz1lfvc9GJiIMzjOYIFAtczUXqASLsRGVmUZCEH90rVhB183sMWLRWDxc-avRJ4DxeZCKlty5zRYQSw9qNBsGoFvJNh1VSx4h0_drafXpk3kQmyAVEzinyyKSMUbtbJTDzdwYCLlYFTBRKH6vrpZ77l1wummvLN0DdFI8PZFRhHEz_3RMAQ3i7UVmU7w "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/-0VUFBz1mSt-T-Mj2TU8CBYhwrsd25pqQxRXtVS6jhJpPVTqcKJd38Xwv2gVhVjbuv4SsSRkiSI6TiD6Hyk0yAQO7ok3Qq6pO0b575mGiU7jX37CfGZJrWAgwcVXeJdHAfQ9E8hns8LTE5BZjrSOUKH5ZiESvFqXESKWzt-d2tk7BdIJiApgijJzrxAnoQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
