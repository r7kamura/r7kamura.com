---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/la3sJGR92y79n8KcE--dz47jOphZBYltyviSyTHAfLO_TjnuwN8b23qm1DnAj834aH_HyiudXPTKt8n17yrE7YAQycG_dlTZfiMQqyx2kbA1AOP3vKWRnYXKzjWXDOlzhls61_dDtN3RV8gqlU9fJpWend7MQsmmefBHO8C17iuMzOdXNPGxiSVbmVlLHg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/sNRGAyj5jafsj7du7GjtR59GLO9nFrlgecrVEuXtUKGr3597H9D4pXO5Egyu0PNPJl-VVKkBnR4aIRoPaLM-XSgU6oSmgC_qXt-Ya5mXizN9V2ODuHewG82JNJwsEQoQ6bSS2cCULGqXfRXTlud-RWv9zTN_H9IVRNU7lGgTAdkBdKcYwTfa-AVDELLZzA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/TITMKQCN_xw3Y49ZVDC1I6HcAicPPENEQ-rKQgWTexYDvqK1H-lJSeC6WMXPuJIpAQyP0C6FsQYT--NMtgK7tjUNWOUZ-eOCjAL61YjDlFJHGhBPan_-4xx37FJ8j_Gah3N0s7-0veiTUpbSeLa_LZeLQ7kTEfZmXlFZobEZuhITqDrrOPHyOwyqfy2h7Q)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/xYj-xDYt4SvV3sobR8tGazFRG6T1UelUG3jpEXHZSdsgK2hWMg6VBeyqQuuemHPhV4gREhYmuAXcMzcVx4KhJ_lDpGNX8ecISYThSO8OF9VSpFkeBS2ozJlBPqnRBQ8i3aN_Gt3GBxDp-2yDwxdVc3LrvH3TDv7rpRpKpZ_4h81iFx5b3VDrRVjoUsIFlA "配信画面の様子")

![](https://lh4.googleusercontent.com/fH3JUz4-ddLw3MRmMJQgT-umOLMkoo3ENP7aNQ3km0iK-MaWFTVKRVhsQNugYIEnHJAxLByHxmCPs1bskeD48BE8t-I5-PaPPqQAywBMoKs37KGJot61r-krNSB7sHrAVnlvJ661OZc5b9kSibsck9mM7ul0Uc7Gz6tqXIUmOrPwcEWdo3614JaE-DM0mA "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/8rgL285yWsd7l9d79PE_EdKi6iYMjKgjUQSbXzbM2iXVNh7X4qsJyWL020l9jMf0BYPLPcikb2FiOtnKuOitjE9E1DGUCHcq54C_Q8q89nkxr_13-TixW0D3dgsBfQXISvbba5D8j7vBE1zVfphdXhBbZH1WvW2r8b0-3BkmChB6_YIK19lCv3axF4hw9w "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
