---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/GPakx2YcGd-IDl7V9VeZz9lBVr8CqJk2o5xyQVKcFpnjEdE6QcF4gs8O6K_IC_tQmkq50CmV357Ru9VzNDHKAOMBAozVHZ2nb3CKB5HD_WfW3ij9bk4fBU5Xg8vEUHmzG2w6nsMROOqEwiX5OPjO90h9L_vaJdnH-7bzOdCLf-l0KdlBHLWxY7ocNlXb1g "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/YOhbDNgN_uEb1Sho4AtRZQcP_8SCpUA8_2ZGy8J8tT2C7f8OYsHz7xfEwAteJYWkj6DLsRO86Qn9kjHECQnXu5gcNuXcer1cnlmqVJbRmel4ym36U4_18ffo15vaWh4_kCabad_arZwawmhS6gbnUDWTr0m1nZs6hirNFmRgiBDLwIcbAZ9fLZx_8shLPQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/6cs2osq--dVf6eewbDOvE8KyFGUKRCH1-qtBlKUIfmlg_ZFZ7cWT-rzN1EJ9CRNaNRLx9JevoRDpiJIIvq1Z5zV6F07lWK6KtWL8bYx44WjEUvev7lSGUWiRHlS_I6fMme9DTFH1DIFhy55Zpd_mci0NJmKtLfzrfhpTxHaX8QThrVt-Y14YRxZ_K_rP2Q)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/pe_SB-HwCEuadz-0lC9ONBrmSIz6j9Nrgq52d9cU2ec8GTxuXKtshs93wDI-vz1FZRK9i1wPIMNlZi5lr8KtAd-OHg1VmWD13mr3C-tXPqa3ltRLF3_3SAeb7_3aanIQQ5n4yGGDDEeWCSXihwLt-6n-oW9VbyVxlEQlstIlHJykjPyAVIBRBiES3ohD3A "配信画面の様子")

![](https://lh5.googleusercontent.com/qFiNZ7AOeTtbPDxbuBKqwVIQDlMmL3Fg4E-fKHSH2Z4E2_ZmBOkMbSrEHexqUgMdr0GNDYfgUvRD0_DjmWzZzveb_M9vSEyoWDy-vmF9eOtsrsSG1cmxY4JEqCWfHFA0cm2sw0R_mzyQno0QBMdCzjCsAVVo0Zl1JP0pJWfKfeO7966cpRPTWIpmQXDTsA "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/5566RUfgolyFCVIDotngA6Ty7rRUJE9PXQtCiQedTr7oFiFc23Aim5itiXGE3OrGJOwPEuri66Hu80XJq1NSVWqUsMEC247V8aBKQ8bpFgTh_CaZJnLApLX8FJ4g_37XPFHgUSe-vvIDtw771MhAAdH5lnKexndbTrJHZ-X05F7uX8wdIguCjC18Fk6-zQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
