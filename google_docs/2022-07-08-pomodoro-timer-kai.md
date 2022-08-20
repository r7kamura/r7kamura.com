---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/JonjkOeXTkHx8uqMsL2I9Bvl2_X1qiZ7e2x4G4cpr-KRNYYjvtMuIh-4TqAe7X5hqYfhcvrqJZit3QEu5ZcDLUhrpEV_tZcVxJaGOfTBXNbHx3nA_hNBlURcmK9C-Bn_m9GTxI4A7-C0y3gPrWRSdTXUezmUdq5vehB5zKa06bA8vi7Xhf0JOYvqSQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/mvUdBhYzz7i3S1CYwfm746dW87fQBiYlPJ880uzFORPdkuMqk9LwYj1Ng6-GB605PUGTPTwHxlS8QKKPLs5GA8zyu7qNgBJMAuo2L-J_83JV5Ev7eAUNP2uv9dyPj5mJOATbcCHdwAuSY5nGYm7HFk1wZJNQETaHs-wA9HsoiQNDmBekTzQ8pS-eOA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/GLUceFMCrLzaCVYaPWAh9KXL-UX67qdIU8_3Eaa922cAen1B659wszRWoCkkaWuAjWgdlyxPJ7bFMtpDjDUNvAqSzgo7sYcVDpntV067g60qIyQFKSyMA-irgu69wKaQWBk9gneIqPXB80BzsuXN9fzp8N_X1zxdQl48xKSVqZ4nQ3hAS_ahQ0kIBg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/jrs55SvJqOEp9rSZO7CCSyJCLPOIKQVgND1HnJI1qLy0a8vlaWxhAL3U2rONh2c5uwb0wpHUVOtpdnj97zGwS41zpuX9JB0RZ7e6UDBEe91N8618OMv9BwWyUWA1CpNUBhatahQlPLrb_AOoycugAbMFzdiK4CoUG97Q2w0jmJRQ_dIU-2a3kQcM0w "配信画面の様子")

![](https://lh6.googleusercontent.com/Sy6i5o9YNIj3lhp4g-kJPfbln1uryPW7WIG2Eeri_io4mbhabBp8kr-cNjjtONPhiWB2AQ1nMDF_jnQUIt5EFTG3fYMDcqaAZGKlO760eMroQo5Lgs7rBEqFdzpJdbQo939sg02yOvPYM0XkGqIFsKk7mt7oiQne1urGEsUYD5Hd8AAZXSCphKu8Dg "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/DHnXHjW653KYw944RsowSVVZrRlRwv_S9giqZPPxt5iN0kc5fwOdNqmzL3ME8WkEcopLTcqs210BvMamNw5Wm11bak6yepiEF0LAxYrkdmoGu4DqxMvFqHQv-bmIPn-SF2DPl3mvxfzaCD4MWhP0ujbhLrfdFkJ1MWMlfMvYfIYFPJljr97-DSJeLA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
