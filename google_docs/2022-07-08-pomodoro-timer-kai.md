---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/6mhdeTOlgU2iXrIce-QVaDeVDVewRY1J6GhNgeelZxaf1bupcjvIpujujDCSXJVkZo7O9sZeh-FnZ0WWngO87TucsPIiNlmEMWZADKzGweaKFzZdFrEj7oDRvJ3OuFBcRv9eKnqeXNuain72QXilzWFzTssLuvSKGOefVCqeGhw8WcLRpT4CwWARJU75lA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/WYrNdgD9tfE4bs9sdDgzgO_H9STBliztf-q_TcPScUxDc-h2G-ngDUWjDQWh5c_WBuyFT_RZggixQyG6IEXKvh4rNzdjEy4j_qO423ogxF83v1Q0tOENJVysuV58tySAW0_9LDCiYWeX5_NeBM4rfS6-wy5y-DAGtILXUfwIHH4eggtpuX6w66Y_exlJnw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/bmEc_r5SKC1aBJ8sPUrJQ7u13hjUese4UyOC7hT_Eh4AfeJHQ1ijirV_lof8wlPUfvg_mc8eaL52ZDg3FmVLpQc6GtumPmssQZV-ET4F4-2akFIF4pRFmzPAhLousRFg8DxJ5gkeMzWcUgxf19osjNE76xBGZ6KPxYmqNgXXyVlTNTjMjr6a0aRWQMvRMg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/q6VVHy1qsOccQBBV5-KYIO-bHh_foVOcdAGSUc5KEEedRP3OB4MkBreOZrBm4SrHbCMH8o_so2KDDnZlBVPsF-dVvDR6vNw0eUHYtDBIT5DfZmvrPkzHTthhdIinLqRK0gz46SjkCdUxm_jHHqbbwXTHvsYFragLSRUekE42zR43buXl1olG-UXeBzpyGg "配信画面の様子")

![](https://lh5.googleusercontent.com/eMxMgScH2zYeJpdxMb6waY4JOLh0nw2LLrKNZfpvIiSth6GWFVpFP5xNK9kEeNckBNxJM5hbzLaerciMfqaVGlwzih-j1OYhQ-YJMtLFBAAuEQuOScDrnDz-d-frCsdT1BGOfYnQ6b_r26s4MNQkPoMKQbya8PI2vbrXYwYndVHjW4zI2pvuoiGFpyVyUw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/p-tUOE77n1TPR4zPnxoBCCU-vX9m03RWCEwZMNb4Zab36WBmqMjyNy37Xg9W-63oD-jleFS5RhDYR6AkD_VtakJMSlWksAFoU6qx4jMGRXq2NuMBuEMNcamKGoTkC7F0_5PkSid2a0ZI0p2GF_BbSeMWqFKgl9OJsqLyJKxxh-DhQ8tUcMsrpFOsvJ1_Qw "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
