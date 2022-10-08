---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/GicavejlHGEEhRfSmtQQMKkigTCVMx_moCxsEI2hgF_LhPBgbbf6CTo2PhA5lT-jFKNZsWBC2WaNkxwlOce8Ays6ppPPlL2bv0bPlAHFk768PEhv3k3MiYiRB46zXsSELqAwEaZ3WmX3gtwnDDfEiXgdMGZNqYkyRowcwD2rHYV2Dw7yvAtRvGNVdA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/zxOqChBvCa4g6_0xKFJ5mY6E1OJ792IlxvAJYsGLfadm_zofUUNyV2iBORQvfU77y_Zf-QwYmiIiCANB21M2RfdhjkLo6kfc3mURdrRSCpMnZnX9Tv3LS8ZqxlJBHuic6vBXn1Uav3NA7aQjfVJqUUHLVT9LhgKG5WoKEqd2CHf4eloc-ucYr_rE6g)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/R3I8mdzM522j7RRvHJwaTW1kK0JlnnPGlzK0d0CES8RMKzlX0Bv9cfxRx3mvaReISQpyZtUJprvHl3ycBEHYMXnXurv3ZhXpCMhZ52dKuQmCZk9fMPPQD5taoZqP1Q9_OfKrsaxLSpzyhpBWZGQGKDZ-S5LSzqaRBDgP7_pOjwSkrV4F9cm6uBmLtg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/RS_qqNxFHEuWEya9oLbqZQhkYyWtDmqPJQm60aHkRrVaSNN10ntiWPmHyU0Y56gX-pEFdLEJ3WKsbZdqqpvVL9UN1N0AmtFdCd-9trU-CBtHWn6VKaDOPiK9vv12uJfIC_ahFwRXMYk-Ynej8lEf8cv9ayi4t7mx7CHU6FIfKteLSuHcDnAITzPpZQ "配信画面の様子")

![](https://lh3.googleusercontent.com/g6aCBhE9eWfFlg9SlY9qE2Hgeebt_90mbHeIuFs8gp1h_MJdvQXtEsGtM07xqQNpOf7JMkF36ljWPbqJbARCGOeWKF7LXrXwSQ28N5f-7tsuxiVuuLadQU9OrQVhe8_KGy-iAzS6_iRoTzLIrAEFNWXyWN2HH1ir4oaHlQ0T7_GX2YLMdc_ICkfFZw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/bQY77zs6EJ0i9ix_2khsuFWSo6PNPpVe7-Y52V7hvZA5FvUAsaKgRy8JdOuZ41NeeobvZhswPyfFpfVbu1LP-z9oc2PBotWmnLwthdBatTQtymvP0WDxTfZZMkQuzbKUTrWOD8diXVKuGzsimuGGBl5MODSFBCoCth5gq6gmYD_SkDxSbPPgVQe6xA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
