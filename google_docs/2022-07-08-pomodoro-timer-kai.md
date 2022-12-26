---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/DwMwcU16B_ImS_d9x0eXH3LCblhLO4y11tKqYv15B0SfobflmqIVqOH1GeH9WqJup7O7DM0WbiTkn4EM8AxUGh55rkdujKvPBfVEctYO_3tTkRd75hodeKQzn8C_X2lc6w3mQBfWaAsNxqz4klAktlnI5_KRt3A0SxtLUKGf453ITl8W3WEiWVA11Xdb5g "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/rfd6wM3foPku1E2uG11eKirulAGweQrq5PFUvC882AoQ2u_do7i4jwcJQ2uJh1BDfsHC53mCNWBy9orJn0vPQpeyJSGZg012P350294TavjxozPbCOrd3lKcL3JKUgI8w8gm9Tk1oFeEh3lrB9BgXO6Mb6L-_qb02g2xEYKS4uZ1R3NhJiUuspQxlSl41w)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/QSI5cyWlXosd8LX2LY41wsFAOfk27QGSDiV15CrcDueaEcDoV3yyFH2CVE-H7XaUZ21P-1ZNredo-YIwXyPvGmMvBJKbtq8PPYZj_27ZTFW65aZDTfm2tZ0338mOKw7x2KaioLBSAeS-b3nlnbuIMynIE7Ugbd6fVLpxF-mR2Pd1-lX1zxk8hR6uRC_fDQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/K-dz-NGYMTPvF6MCYCPHELRIWr5ADsDAQ4mcyx4m4qkdPGkngo37HOYNehbmNw4DzddvuvCEmJ-xyg9gCEBrrRHaOzOhFnCnt38SkqadOvXUNyvecurE-mLfrxi-Vnd385Kv5Uc6NgqQkW3qhrtVnxcASg7KZ6JgFMlKoo31JWlsbEr7B-PR_eAjhr_yhg "配信画面の様子")

![](https://lh3.googleusercontent.com/w7whHgshkZjd8dqRFR66byVb06jv4yEawIyXK079OV1apGJll9E1MuuHs-_iIG0GZWE2t-zvk4vjpXXqJ3SiTkkrn7K9PB4pBm6ljoVck3Q8wa5KmwylWcu08VDf7ww7-8if2sdrKWgVb4Ozz9dliju0xtIy85OuBah4L0Mi_S7nvIHO3APRTSHDmNRuBg "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/5lk7aX3cr55_oqWNkSAtNRB4OvteiNcQVnQveULXq5IBqI_88b6H55uUSS5gODYIuRK-_hA1oEnsLVBckqIq67ev_Ox4TlzzmOqvUN7LTksiDNf9VtYiy4RHaasUYLp9fQOVTknKEFSSbtzvDrqQa9P-BVkdTsT43qKe9jFg6tLeHz5f1-w1ai6jfg7wHg "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
