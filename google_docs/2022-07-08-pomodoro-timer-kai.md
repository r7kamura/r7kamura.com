---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/zQESdg_aBDcdJ07vVcp-jd_nPv0rl--dH8T2h6BeSuxDd-wyCyYDLocxApA6mgWyfa8j2YjALu8RfbkWC8jWqrrrkLwJGIENraTFjxIH_N0pEk7TlXCBgaAvV9YQJ-Qg3nsRlPNGd5JETtVsHMs3wsL51GdnAh0jl9okXWOd7GSN2657rK6Sf-yTqLhDjw "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/eIcBbD8Psa39ogU_BxYpHPFsLJnWYAnn2bZjzyljylTpnuYLUexXrnsZPFCMpKquX-v8QuPafOUsO_7YrpnZh5iOA-9Ut80uheMFmmfh0EBmEHQIuzFi7Xl2xBCCfOXEofvHVl1MMAuGr8Sowzw_ymJrOvEo328uNKmYElz85pLh1fYesaomrwPzCUKIDA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/_R5vBV7fldqC6PriE9f5q4mvUm-CfH3up6MKVo4oidgq9zAYhYyj7UXCJanZapRiI5yjbi6jGmYNAWTHpyPgPM-LPJmp6edaRAjg_7olbC8An7UBbK5mCTjBe1xgMjJGwSqXT1oDl1MKWRMPkynSR4PTIHuGpFA4tV9KSNpXa8s-WXJW8ZWlhKbPmHA5Og)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/S4LpWWuzp0Bc5b91goNJqhh7UhbfEyLst7NRoxhdbOGN_szst4aiGOkZhnm1wE7Zrmrhj2dg-tRWutzi-9mW3u9YT470Njvbz3V_080mtundT_niLDEeK7pF2OODQngR49I4_wBQi__iOAuCi5KUOfFhnfNUDxPFyu2RBxFK7WLnjSsQciXHKsgWJGi-_w "配信画面の様子")

![](https://lh3.googleusercontent.com/nwI_OefQkzIFSxk6hvSAW0cLSqOy-tAvFV60EiE5vv3Q73nM_z9WIN1P2qwwFzPzU77u9B3z21XH3gH1ah33VZHvYsW8dYJmLjFNd14IMeL5sZCJxnKVn5kcctbKbFDDDTP668IVdAUDiEEKidH39nTZ3mO4GRf6mLrFqcI0IvoGvyczXgjS5fvujI9cMw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/JBsrq-gOCdWI4UpWRdR6e5RWpkEJSuhWiIW-m_1ByrlHF6KEKsy52hpffwXlyG9MgaMRG-cvozTHC-AVyyylhXT-oomer-9sXh936mui0UAhnAXlVUypt3a33fez9yfXHZ_0rfjRaN1vrM2MJ_x1452DCq2Fde3MMkkebvaTCIyUYymubje0KCbgQTcR7g "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
