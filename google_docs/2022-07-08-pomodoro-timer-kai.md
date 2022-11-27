---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/8GGJ2TI1dNke6gQiLMt1-UC12xccWnngyHfpqm9ncrToEAA2LFeJ2CeyrSXQR0AcXw8rbfF0yZEaJ91HATmqt-r47BUBwUci_HDeIfhW1U64RBia1VLi1z91iZI-A62zBH_cfrwGQd5YCc-rndshIYYBVonEWgTnZ24v0MA9dBumomiOBqjEw576rdAtfg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/K-YFKEtOqi44iqbacbXnNa3wJ0TOepq9vQOcXRrRJ3yVdp4FXutbIcRLeKybGtwUg_GVsWlxx45GoYvOhYObFULoIurhQqhHRz4Fs5_O6mnbHEBElEomkSA1_je4kqp5kvHWJqZ75qUqlLi1TSqgTvDdvgJoEfInK7KFAOJqCAax2MoePQHsjZ5cQDrCNw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/uUF_iqnfjtJSpFzr7R_w4BaDJuxmQqRsc50_lkn9XwsKp0efO-6aPU5AUIAd6lJ_PJSRmL5QQ7QDGlgj2SU8ROMrWpCJuWhvmMiea6DzEbLMIdz5FQcB37vi5MzzbMjv6RiHrEiTRI7skhsJEyShzI81Df1JW4qJp3w0ZSb6LvaZZIjFW1Xe3zLXNr7Qhg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/psy-FSZbIJOBgnBEMnVB589bJmXeBlpPN8BhOBwANgHoh6JbP9VATkTU9P5zAuO0zk0J6hcBuNUTN3Pcw0-k9VU0lYQzZfJExRebyFG2aEzVAk9pNKKOZrk7mFjiqVEjBW9DqcFOVvj82b3QVzJ9YFB0SF11lMKW9im73beGfJ6umgJMNpEeiMduLuQ2Cg "配信画面の様子")

![](https://lh3.googleusercontent.com/2Or1iVNiF7l3cxJGn5mTa88KeuTkLYYI97It1lm_FpZXfNyXB0oV1jJ__tslKfVy_jpGfwnYhXc-jVqYpKx8fPcl1FdR3D5sCmK953B417R0UIQfdsu0fljc2Xo8rrslaca03Lq34DTWfaABtBrv3A7kQgA5FZQfTzgarizgFQFgcixP87FW40a6rfW2MA "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/HhjCoKs_Wf_6k3U8g2e8m8PRkI8zi_ijfkjeCWHLw3sb0TlACrAda4hMj8srHaJYYdWnf3oO_xuAf6r8L_Z-Q4rdPzIHw4UsMhf2hes15cST0x1Jdat9gFT5vHpgLaH2BsQ9g3XWxuzFLM2FB_-xLFCv5ExFjMik4ZAxbFC6ROHIfYPvIIu4c202x2NycA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
