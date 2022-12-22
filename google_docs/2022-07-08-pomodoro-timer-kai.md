---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/49yoonwLxm3hL5jDL45TR1CSCukvG48wANjur4QGyc8zVf0Qlgn5_gXfJtjovV1RiJeeFfaNNn_EoKuTSg5q_CYu5vPfWTuVH1sxkrOu5mmXcz2jZPbq4aZajdDPYoNVqJPpg4V1KtrshvmAuF6hpLBWKw9na4Zb6bl8XuXNN0jDZv9T9Ss3tUSIWn2INw "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/eO0QCQS3RfStzQRHPHfc4T14CujGFDhtciSqFHXNGC2WpYXfZqdMId2531IqvPv3zD-PCf2oXg88taP8ZuK-GIMNCslMBlKiHVjo5M4-A64JFncuSsA6bY-4WWI_A-vJ6QFlqg9OVYhx5diEmDNaSoajynpSFQtAmSDhgKisjBXxTImke5iNvLcap9alTg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/MIrx5FxuexuXYEHEHXmM3rzmI8fSss8YilfCmUoj3LA257cUimMU6MxIgI9uqfvKrM4VQa4zfhOWRwApIvvyABrWL2b4p9qXxFw3GRSQBYSQyPxQsgR0eyWhSQfJwOL6FjuzzrwFbIko9kahMko1VvWHrprREa-M-8hB_2x5N3lm5LGksxQ7-K3_4Dwbdg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/DKBPeTcOKEF2Uum5mJF7PVRcLpUm3MUpkYUFROB1i9pW5RYCWrQXCsmcTC6lNU3XUHoTEJegtcMKlVtfFSQHRj7G95e0pOGwJJV6JTTqtF18XGQm7avABdtRG_bl2CP-GLces3u7RvT2TbMVUeOqlNLcF0Bhf9WJbwVwYZVw-KDAj262IWfP-hFZaoJ2rQ "配信画面の様子")

![](https://lh6.googleusercontent.com/pnAmwzqfAb-Puomyfq7rUMyh0n6hVi-WaPU9GvtI96fRjJS5rKIvDvgRKTXwqPVtLR0t7xcHr9nq4ui3d9n7XrspV238h8RXOnk4f04x6ObxtsZN3TCR9fRswLi-33V7HQQOoXL008Y7_Mu-8fAnCMmRD9cfpfUUy2noQSunZtYbnsAc0R00421SMpgS4g "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/ZlvOzo1WZmwBU2HrIgtDrFBdJhTBlGPL3HpTSO8PYoF5MLbpoH6QGM7dMRwMccdRhZP7y2_LvUyT8nEx0Q-ezVmIoiA_0br0cuvQHc5EbqG_6byVc7kCMG8ikRE28bE8nYJnJ-AqwyXAu66WkRkuAS4T1H03kEtjOuQJKX5y_hnC0pMgdFmnTyXzEBvFDw "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
