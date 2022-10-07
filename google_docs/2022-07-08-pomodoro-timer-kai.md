---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/BMPUjb8AsYtRmPDp0poAd6K9qWbyLYMm6biweO7jPCvbtHXw_S01u6aL9rzQ8oGKymZLNRxh9AvUMjgf7etwTzySqfWqn36nHrG6Z7hYk5BkKjGxD6j5rbMM0kr_ol5ZCqTB18EC_62ABxsMwWisFzguhB3cnxNBrurPcixN84eXAo4Z6dm1BKrdKA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/vaHUcmE4qq8ZMTDeVcMX2IsSSvBQ_nH2btBI2YLnHo7egiinrUzWQZ1D4-PVHUhXzhPeT7_MJ40xSCo9vaO8ggJOD9QE0gx0uqMzxNlIVbEqFuMgXttHoqJzobh3cv8gFhpPeTB0xV9Z1i64Ek6nZ3FV82_lyRZf9p3llH6GU7Iyl6FzBKpilAAXoA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/pWhrlceZfUuIXLrMIhidPVCB4zWtSSLw3ufOCN75g7pFOWwlzJLXT_XVgQXT5jV5GEcvTi6VTmDoJfS9y84l1kXmGZ7CY5MGLJdz247Pno336ciz43XWk1nTQRXOuWfH6hsAvLGz0wD0dsgmY24QemQjmLAomgDOVX9XAhVpUfKYOveXYhX5iisDRw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/XqtEeXk8E-8d3BbEpVz1lOpO9uFXZnilMCHF4_spSjJt9tPwnDFrU5lUDCPr0wA503QQtfuk0VjQsdQazGcQlaQMdve47HzyKVs2F53Be_MsxZizer6-iuBhZ8mhfhy-uXndKnx5ge6ysyZw5sdW6ZRGD9Qf3uMtLIN1RgzfvczUGMNjGJ8LPSM6JA "配信画面の様子")

![](https://lh5.googleusercontent.com/k9J7z3x0JTps8FWQ-vgIy-vpPxNlD0PULVoGh4PS3lwyCbLGOgOp5HMSXQr8gxHhlDhxKa1wR6SpzjjDRz5s6oPg_4HX6WabwKTrDIWKG5FNsCna4ThTf3d8hsIg6YWquyblyHUGD9195EG7L1WnzZyHky43s2k3_HhkMA_Vl3VonVamDMm7l5ZYAQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/1WRkU9qsScJEyNZnWBGaCKaVc6YK3PbYy4edMA8lG2MwiijbHE31-N4O7XYoksKqqdSX7tce96Vs686IQe-dN8tZ7YZM8ndxOw5Bto4-8fTseaiPwtc7fFterx7QR0U6UehblZeJBepGBDsjIPYGgGhEJCBvkwt69MkEg7LkR6hsa4jMnyJsSxsoMQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
