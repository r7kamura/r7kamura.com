---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/M0nTZrp2q6_8OddaQne-L0qd4ScNqAHmOsfKBlcWg7Is7n39-Dt5hMyPjsk82NL4sRwljTk7X34Rd4bybK0h9vpfGtjt7b0CYR4v71SrESIGOqUDvXqyMGpOWQ5P3TYSt9UPaCAhk-8BnrA5Pmpyy7_pfCDsCTqBfSgzVDzRX3wbQy9rBB8nNlFjtg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/eeyB-mb5u-KrwAuTWNYP4vTGyt6Uq90jHW_d7lQ1z3P2sMmxKqaqLFRt3xk78G4_c2FhuCWCIKn5U5ifQ7eVqtC6surRh-oIXyxeo74Tdv47ZmS6sd0R2qCP9zTg15yPVm1xcROC3FZ3PUY3wxcJDbpR0bBCj66VcpY3DDA2QuPMui_rDbWBBnTnLg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/hpNjmNC6D77Auwe8voIax0oN_Pf1cNtxhqk6RS1SYIMiZ_rjWiAc4Mk5zszPkaY-W-qtnQ45mUyO6YpC5cgCmvc8Sce8GiRbNQWtMa_PG3-8IiTiHUob3VBLKc45nYlKOtStQq_S9YMzFnvDFgRsrg6Igs_7wyh8yF9R-z0AXg75J9wblGKygSiBSQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/A5VCKKMEag-JZNS24hTLEeXulv03F-hNihJzV3ID-IHAz3v7GJB4F-2gD861LtpIYMXtsTkZa4pmY8qPoEQhUNafZEVvGWKeCfUhhkcwkQLb_m-quCcZ7vhHNWftUogS35uSLm8-85KDvoIC2l1uhhJXrgjmKIOlpmRyeDPpexKf7WDmXF9aaCNWxQ "配信画面の様子")

![](https://lh5.googleusercontent.com/KEYf5B7OSn5qq_g2b7e0ccXdWwNk2GWcr0Ttz6STRmJBFMF0-zJ5nZ8fh-v4a3QAoL2mwixzrJenvPWjkKCQeZntJsopAbg7ojHwNdPZF4FwDyD76yMJbBSGqkFVwbBm4Qn8XWGLP_iGJaAaParQzRtlP9eggAK8YHmj_QR6IF5jgfCa30HfN0ZaCw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/tZYiLS5pKCMz_5VpmgcA7jbkbSMAKY7s-OjquTE0I3eqvPfBxoBjqHC601-iuXzSubPc56pYO4LPe654gWnACTOFz4MiZDEQsbuFdau6lI_MmX81ZQ3-UF-s9WhtslkXpRDYn3cQ6Mx2aXWF9g8bEG5Zwc0R7bqpRua1pKSPHF8olxf-ezs3VZ1D9g "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
