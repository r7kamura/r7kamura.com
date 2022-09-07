---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/ega_ADEnERbMI1nUoHTb26ZCQ3Unt8LEnEtI1_AL5r9kRk__zVnMB3l02l6aoOJd89l43B5V-bvreOfaqfcTPJfTtdJeeDW-UN6bh_Io0Vnjo_bafAWRDX7PKz_5R5lNKvQI8FFql6-o-QV41zLuFxs5WKvD3Lm72sluvLjF7AaPvzHXmmwZbotqWQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/Hozx-YCFedL5h0fkF1jXR6a-S3sMWE9DxfRLArRy2mjRINpxc2whVT_JG4U75zYvOc0KR9QekFHYaui-4-3ZwQ7jHIsVow66LNvd7ffzFREaHGVHckuniJIhrhzR2zItLXBN9YE1FOs128YEcgxTvuNOT5lMA0S_-OTQ5Kyf0xQ6cAYsKtBpPnXpRQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/i86tcQZUgHX8b2ta8VPcRUy-OTfqNUPupAFHTQXZ8edyx6oZQ5DGpcOeMhdHHqC5NwhQRC7Sx1YWhJTwSa4JcCf0uceTjy2JTGaH8_T6iu_vzQ1UHvF-RkwKSAYIAJUwOhKU3CKo01-gOIojkGN3DJCF5R_Hbykpthn014nRckhDI_yE6Vx6nlZlBQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/Ip7OypcDhK1izKAUedleb-X_VVBEUQcmz2UYawWdPt-m5_gAGXTfI4YTtXbBiO2awdn-v-7ON9lvPquJnFQME4FbyhXUV9WEC9i1tT0ldTiq8Heizk9MvDjKX_TCKVdYAGy_VgOBFLpk0V2JhWGjBmlWISQ0pwlJn-vzV-nHMwApbMWMe869AhD3fw "配信画面の様子")

![](https://lh4.googleusercontent.com/E-C3Q3F_yRXCjr8rQABrnvJPF2G8tHX3Qj9w4prUvLAsTgTMA_8gKlZItfOGGgju-vaJ-RGcfESkA6gNhTKhW-iVHJd3CYWC9aRpd8xJ0Kqk01N-gMW0JN1Fdve8EVjBffO0l3fzAo5khzyu7Ny3Wt1kmwEvoWduQzAiWdcToJvds9cCTGQC_AIOKQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/-w7ljL04WR8Xy31s_mwrzrWYETsqHJvwpTBO5pvhgjW_ik-BP_qGBrg-gBLS2QZSQrEjt7W0mpEGUXRsZhkiebzkkyeIlcTxfFEzDRirMXExIrLbiMPklb4vmpCyQsabU4pRp-eKBis6UL1TZ1BMhkNLPaw5W1GOhuj8Dx2K9k_bJyyWedp-J_KZ3w "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
