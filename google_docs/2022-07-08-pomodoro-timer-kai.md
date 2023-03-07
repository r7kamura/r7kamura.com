---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/rVcQX04TpVqRZrLTKaPIWWGjylJnXnN3XbAjNd3jb1CF5aAMVK9ArLPinkIonRMTwDwn--QcbLqyvDJqH73rMZUrRpvGbwTjDuvDDru3qAtKBkD8dTccDk6Znzfl9pE0QKR92bcyMZwiWweUOeJVesU "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/IaVqPPbGKPAc8IUWkbue23nKlwoEm2cWcksi9Fq7QfPm-9CeP97AUtM8XWu15b-D5Utsrl5NnaveYsQoYUmIIukVmIvMOYBMDsjreG0-o7qAYOQiHBhCP74PUTY5A2OzEb2WfQ6PDp_y3XYajr7HP78)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/Ukzi0caSjnnI1ySzqD8Jw574aHXEkPMR8jhpOCZfmWrjp8_cHoq9-XqlrGx5sE4vqoG2P7Y-ecZAt7kehB_C5bGZ96KKDQX3TU_dtj86FIjFsscwXYuyuCQdxns-k1SuK6rS6MMTpmCHK6vr761sJKI)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/rhy8wH1eI_QYk_4XKikxvZ1Zg7O9OtY5vOuKeFBaQXCoI_rlup9fyN6TOt9gvoWwjfYGDPWmORmWGq_o0f39D9GauB60DScRfP9Tu53BHagzyox6MW0ug3mE7dnEVm3U6NFlDU3cgvipDOJDPkjnWWA "配信画面の様子")

![](https://lh3.googleusercontent.com/MkaWd8m1hje6aaTO872YV7-Blofka6dX1wZV_mtGtCN0preeh7O40zP2-DSz_qsHgQ6OnxNv7Eq9_GBUuhOQ3YrizTmgB-YQ2ZeHsJFMaEwrVtAEqefzrKIa32RPUaydSuzQOlVPw3Na7sKSOjk7060 "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/5L94Rmcr-XqLtbvbSPBCH62Bv2ODZ7HxdKjDF-_zWWnNs_zJJJWT2VwIR1PUnCDMHUAPedfJTsxDw0V8MrmVB9-bpA0ezkp49GWIBHKS4bANaCrq52L1ZZfPLfsMatT7kAocs_i77AMYb_zBLxf0ibU "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
