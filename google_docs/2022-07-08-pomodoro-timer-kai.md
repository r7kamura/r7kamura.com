---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/TFCaqpHUCQlUCg-B8Rk2dHnfAlo3ANZ3opGHUlvI6p0r8aFDJySTvOQZxK-7z_H6M9VN-u_MLLPlY5uAIHZQTF3QP-8OkocoDwNPeISG4LsjOemFDiKfDhiTXK1a0jJfYK0CmdaA7VB7ofaCNZYHuAN_0wa9WISiF3-nF3MwmO1Zuth1sEn7FzDX-g "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/BM4lJflpQ20RLDh5fX-moXPzNBLzzr_wu9S35A8JtmYHbao-RnADOdHi0BjD7K4GVzNV9bHYFjOF9D2n_rZpO9fdvwdapy7zhlV0m5anZpFmYDlkng5-Hk2Hj6ruNR5YiPMJjuppxat3Y2CcTBen3bOzSfhKJNdPidj8HlVSohihPIraM3DuKwW6Fw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/AeWcagRAWtQv83NUGcSeqOY9N8yot0J0cfkpzNtxqAfvbD5D30IwuiU_z9xhpfapDHycgi34wDhH9p-EtPIennCzJs3K_19ZBDD7qngdnabT4k39Mp2irYNJaPiCDelZ-7gYQ3J9Hs9uMMI1tl1fI7bKYH3piHLiP4PvgwNRAbay6BjKjey5XS9lYw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/2DLJNqrkKqG2nX6A6AO70NGjGgJwiB6DlA6ktau8qzplIzW397L1jo_xVHfrL9EAmG4pVakFhGYq6tpqoV8K1Qqz1DnX026PssJLhaVaSCinLOK1so0tc2vBSYD5_0eIB9Q86HUu6MtCMt5U3EmsD0YgR3oAjlyKzF6zrm93g-AcfeB8AjlPCHQQ3A "配信画面の様子")

![](https://lh6.googleusercontent.com/Yl3tR49v_naNGdrDhh3bNdJtYNza8ml2xvLxyhbjkC-kIQrZB6gW6FSL-2xAv1UBpsNIh8toLVbJn0GSRobDm1rya9DEx1iej0nWHn9qwbI7aCKwAkBZ9El5bpb-1L21KB_FPE_uYYL5-H_S-XBY4Vx4d5JkmPrsfzTSs7tnHnznjLn4rVxrLr8CVQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/oV_NrbpmtvDG0ltvVsJdqxOlg2ap3e4Oivs61C7pNuBbjbQdZuJ773UgZ0tGzOfU-XJG8m3drwz4GQCwF69qSOk2fK2Ayq0NIkKaRFLNTszqWqxwSe-jvwpDQF7SbHiUK23ZxhUGsc7HOoSM8eL9SC9UZC3VFtuQW0lZ-gtlu9j2Ys_b6W9raUlPgw "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
