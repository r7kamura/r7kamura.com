---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/ilwtHY_eyQN9q01MvODz08rKY6PsNCD9cBg0HFc3vuKcoeoP_eCoYisoYfQKTXybWl6g6SB3CwaQ7hEEkEEzXX6qHUCWm8kDRr-x8Zgbccnd35f1IhNokCWMER1eBRlaax79k_eCcZOoU8UDmYH8E93ZfoNl49wEl6opZOHoUB5fWVwFzrxat75eWtY6-g "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/uwKXPlhGny1hVGtXx5PhLA7jPtMaXi2cl9GgrtrskY27oS9o3T7NkdL2xRxSWZgu_akEF3yjot6P766xKWnARLvf050Fl8m7psBVrjBypb2onTCdcQFPcWZizpsj-BFC9mbv--q3X6-RB0thregobUQ2MqbRMRSDscWGkz4uHWxofBEPpJMpRqotm0BCJA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/p3mSvpPhoHp5MGwzKobXWdJmAK90BPUYMvLVIArMzyQiUelwBzqOfzvjWmOP71m3zKu4LuwdwfM9Z8AMhHFxeR7xTtbU0xHCjc-TAjjTYa8VL2ozoi_dqFgUgsN2iHSdtcH29abk9EJ0TZGSx_UkcDp5Js_Nt0t55wJpFO_L2p0kbmxzhvNuESFiFb8AmQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/djnyeUeieWVIwHPXerk-a4QwStLQUi3NLZnIUrT329eXgeSJVtbNikl9PRUa_smPMr4D3nOisTNN4TxtoRF2rbOG1hpL23oWrLqmMOm9noCztdWjk2D59VCz0upOsu_JDmztNjojJNx4KOEtrrIYl8Rh8YtMCvggY50LVfhn9wyhK3-6IYrkcMWs4TH0ow "配信画面の様子")

![](https://lh5.googleusercontent.com/QBrkeVvW0UUOQFATWqXK5ZRAClj3pBQ5LYRYEISOs955lnmp-obSN3_shdfgafXgxLJhwpvITCopDac6Tzrw8yGO0xapsHU6hIh46uy1GoFUCu9mzG8cvOl3iW7vslGglgdabVmQEmnUwTrE-2BgBq_i9w-bWigYlFODOii5LDkl8hcx-QklsuzMOJ9glQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/f0fYm67iZLoC1mZUYwETmpnDDC0R8o2dKM39PDvnR2DgWqPPUmXohCXWi_DiBWJJKvzoBxmOkjO5BcdKo7mtyHQdDEJZ820adWJdOjwbb1e2Gw5CBxzHWTBDaPb1sO3cuDXw2ySiEjqFkeLr9NYsdm_NUD7nJhsyY3IG_y_eW0evWyNJc0ZPtem1WmoS5Q "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
