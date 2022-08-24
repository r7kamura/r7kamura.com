---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/qwi_yrguGlXe8FAse_8tpWZ7ia58ZpiD8pBmvS7QkXVqArTX6KPWoLb42mNAvMdPBCcr9UbVQAsxtOAmMT4sq-qdbASKGprLH5j8Sndl5_tmHk73gAfpuG50yDrvkpSZrewu4DFenN8b8uGftAUEJEbQ4_Q0_g2oqHjnk-qQC57sMSBYI7SaptinVA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/6zMrLyq7d4h_msoDbbniv53Xw6OpAnYV2o2YkgFfjRGc7zQTRGTYRp-Womrq-oH1O0qWorafumH3xMbBjyLS8e4vQf9sxC6i6Xu3ElyMelonYpRLD6h5-OvTpDRm72OYoi5DdO165ot3EwRaiEWnUqPMy5pTsuEo3ciuvSlAnTjLvNA2UqUK8Vp3Cw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/SwqtO0tuxLCPSaksybGGUqRqfYgbUyqQWXniYmtScA09PIKGrcaEIVek9a0BALsnXtlPNKT0F2jTz_1GDSgBzxtxQiM14PV6YkhzJ3Zqo-1qmT_bljYnER-b86xY0QSf6RGunhs5usRSlExcBy4lG0fKKPOJ_7_GWLGo_5GB6ANzjcARavnWvvkRPw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/SIR7yxWevrfPjvwiOyOH2-Xi6jmPyDArKKOuwxJqYcKt3wsFna8iGfT01go6LGTGhKToRRS5cIj0jqImo75k2-W0L96D2_M4O6e3hxWo9ltJFVuT6LPyH0YIzy0iA00pk4BYrQZ7F3mQ-ir8zhj9Xb_pidOQNYc01k6w86fscCV5-lfWLO5aGlq0iQ "配信画面の様子")

![](https://lh6.googleusercontent.com/IJzE8OaQy_0YOwEU5ADp-Hg0ERgiSooQA0_8gSVhS_Q-aOdvyt711XQDKujlbTCSmDVdrJAReMj375D7iYX8A0ZcSCnCgCC4dGXrhQtE7m4t5Ol8XH9d09Kt91Nte2M72XNlIogF2U4v75AoXEX0aHNbgRDO8x16n-gV2x3E45iYhtr9S1jYufCA6A "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/DkRAyHuS1hDEgZiB8vWj8Ut-9M2W8QcSOXZPzIP8ZECqc_2muLsGNBLO_PU8wvh3AwVDhuZ8LIqNXHDbQAXKAplQHV2kN8md9cc7_N21YKSqKZb3ogKhsg1QpJdDKsXQqY65oqDwr-F6aY1PBE95M-VMSrrGdz9SAKvw52Y2x0OP7HldgS194CPo5w "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
