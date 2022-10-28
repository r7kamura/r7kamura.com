---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/YjzFGUL7hS3MfMcFJ2S7W52dODjTnsc7vBMujCTSveFBxdkdx8qxrFUpbZBqraoxiO7Bamuw6p0Eibg2UoxgAkWdxJ8n5an-M-mRu7j4dPRtdkQnXfkTe35ETh53C09ktCKi-8oygsUd3VOSe1eTCfA8z45Q-AgUI7afWssqfj2QKVTzVF1WsJ9-BQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/mrncxUanTULGpoW4wcaZNTp_Oi3g5-erXMjgeSzZikrrdnlbLNg5Il4-_rVDvl-IfZx_bbkqJJAWAe2B-PE9foJGYglZKwfhF4ulLMkN0wmlpF-EbgyWmr70rMtJJjPfefpUN7u9lybl4myReF2OBrmMLuImMu0pkBEiKAN7bgXbeU5cv-2VSqfnTg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/VwUxpmvpT8WmEQ5nJ5at5zHqzJK2bsPeUA8qmuJnNY6JOelihvR2PFytbp-nYBTESONQfVk_C3TFzEmUpwKG_L8zhFlGFjbTkfwIA-02dw_RucXNENDA2yW8DQK_wVJEOD22xI1hQAZ_Ve5i8fOukj1kHAk5dECQQ24z7n_fObYGCc6XZD1hSye9TQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/y001GGDjMSJRn_bbyKhBTtylzjKoUNpZGMR4nluKhNAhtdfUkWa2knAno6f-BGArjSq7Ggy4b2h-RjsCnMX9171Cq-RbOPYnluxfiBj7dJNAvHRw2cQFeyqPgpEsh4QwW4SHewQU1KSszVYYpgvq_pvewQz4jxfP5SuRrcRoSFpTiEJwDXBfRoOi6w "配信画面の様子")

![](https://lh5.googleusercontent.com/mh2Mse5Zt_Dg59pQVIgQUDqNpP03Vr-PdnCJBXtFmPwg7S40EfUgHJkxJ_GnF0gL7qF3ZDxAwxR76i8GB_hD_zQKYZ6cwaJeiNdbp3yI4XGHZhitD14fRUHBal2g21LrxpjdG21Iarmoxy3QeqDvSIlpA3dSd4hRITbNHZOof-lEf_AsKo9AzKkSww "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/HN4RdcI2dXCL_At5Cm8Yrrpifc8rvXkTx6yF-Iu_p06bRReXXOFlikDms9t7b_Oj72i0K_cwH8iDZ0O4mCgplvS6LjY8prKeKDOG1lq1BQEV1nRZ8D8tRM5QsznPGBHlTLOWxjGNbZHnbLlRl7PqA2yhc-g0WO1L6F3sKUeb2emZpfMTM7MauW8v6A "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
