---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/Ubzkstd6aHSjUD9uYyUWcVXNqwC7rxjCx76oU96TZlolTrYFBui-r7Q2IkLfQQZmFfvQ8zk4LbgO5RPcSkLLGTSPpsm-OsUo5jjHhCBZhUZ_z4Nn4aab2meOD7tpTfZRo5UE2O145sni8JEswS4xYqBs7QiUP6Li5HLPMclfJK4w_4HBHUBenlLXag "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/SQSFA9Pz5V5VWxZ1vK3xTKgjIu9plRjD7GSE9zvHk6SL2ez3sUxlcz_OrL8k3wlpUqehbLZJH0qb7Lv4fBsrG6G4GThZceyRBT_ZTfVmAqBNoAH8Mx6-AnNvom7vt2kQJdNB7qGD2ZyXqaBI2E0wk1lYt5WUWxQ0UNFluESyzjRYAXSvXiU2CUNBlg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/jvSEIMXA7kVPeoVeJIdskylwno2pqUtA8NA-09m7B_KL3upjTE-8ZkJlrDebI4uvN_Z-HBsXCemJkIFJ6JugtjI22iDmwJ43q_49yyOo-tVtc00YDdEjkuuqgYXYfO4gL6KdEIwsJscnboWFUwvhXAftU-iJEPZm8YyCkF2yTCIRwmt1IwlxMqvYJg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/FzeVeTibG9Qn-GsjK_Rsjo8TjD1j3i07kfL0NPSCEVJkogYe9XCdhkqa6yPUh5-jD5t28p3HDl2f0n_foHkZtb9jQypBxZ4Cs7uoWrfnYEP3dYSkASFg3wUPL0tc09wjx35nE7PMZRjgX9Yb2VSvDtL7fwO51iZdRfmd4wvfnzvaitcgrlmXG_WFaQ "配信画面の様子")

![](https://lh6.googleusercontent.com/Is1Pfg29kTIePEu5Z1Q0LXkZJvhljn57OOIwrcV6gy04eplVL045R_BnmLWNiEfVwY3eq5eTLbdqpnxSmOS53izYiO_XAGLzANFT4OY6sWH1y4dQlW39eD2-akEq3hZqfU9wR8P_AMDW6LVnMTwTUruBKkSRO4ZOdT7q0wKttwYvcCdjYlOBxGyxTw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/gdHYCrPBJHIu8TNgEZEaDSn5fg6EJzdz1FoLwC3Dt6PSl7xX2sb_WVIn7zFxEBwVGUbYhuOB10o7Wj5tjjMyMnloavvXfjI1-bFwI-X2kuO2KXqUDrD9CgGCk5qFwUA5HLb1J3jjsdCiireKQWvF1zFTnamzstdvtuMlhclhUDsvdmFs_V5ynWOBvQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
