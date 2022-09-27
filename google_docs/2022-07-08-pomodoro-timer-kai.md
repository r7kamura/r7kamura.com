---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/4jeV698tIm6zegpLUIMBXAZQLGHv9wrTCxGVIRhwFC3ccD9EBCXwYjEu1NDVf_z5c0nyuauchX06BFNdbPr1A7utkeBDnIBdxVpA8yNI5fBXsW42p9f0VgUnLDUh0r-Q4KenaKqQmdg1AA9hRfZ8Xjq_Ro5RtjuwsJKbkNIWYIdV8fjVkmSlMeCLNw "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/aowjfuZc6bgsxxkD6Cmjj0eqBHMRlOO273UR8YLzSt1y9mnve8GjtmRCNp51BguEZvpW_NXt8tdtaiiCeXdJoFsWr6-Jy4fUB_l3-8aIbHVB-eOjQm1S-8Yg_rfz7GZwzhN7IZBS32ufL7j29hOz4EKcxxpOQPpxPkVS5RWXJS1M0y5kPrqNJoTQsg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/YAytlmkFZpRp98lwJ8yefJIXPx_qn00ucOsygMOwK-CdQG6i42fBo7puPlGpprVUxae3klKOPUNXURlpLUX8uk1e9ng4VjeNJ_44C6OWCEYOTOEGigvVwUGiqxxPMJLSG5IOQ-vBf_2dugPAmL_UCbNeEB-_tw_9SDdvnToRm302excnIuzKouDzVA)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/BcTvKLiIS0Zp-ezbbaAGVq06pxdribAXiC-eJUD2_n6R4sNo9xzcwqJvO7CHwcwFzghNI45d2FRWS8ppAUUr5ZMPwf_AThyzdHARlPetTM0hR_BsfkSbDwtjJyH7CzTzOYakC4LJ1vVQDuNmgMrHwFUhs_0PTiTdcm3JMa4PhQMR0cVgIJ4PV_iJGg "配信画面の様子")

![](https://lh4.googleusercontent.com/Tm8o2mDEl0qwoIwzaMK9F_JHnap0qE0pG2NaGKw3HvsK70SjGrRag6UpSkuf-eAG7_I3azC8QuRIs0wfCpCOCs7PM96f-yyd5h0EE_hTx4vDQJ3eSgRtEBZ_6grh6tXxR90RuQub1YZPd9TFv8YjczupTQCe1bwG4JsJtTdmt_R80eW6kgb-MKVVdw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/cqckYNhvHyc7-LO3vEJsLDcBCw1VQ2fUO5yKPt-R8Wwc5YVEA9wQACzbR9PCPcCD2f2biCjahHcsQRW8NGX5M800ZZV4QYY0FNMSUt7v0RC33gx2spgpVkA_CGOoUK3YiYtszss1XOOJ3WtK083vk6U90Xxo4aaRZMoVyEAGTm94MGLkNZTc7pUj5w "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
