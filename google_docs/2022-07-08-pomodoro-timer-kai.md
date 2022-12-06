---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/4tjsrlOOXQh0hfWMb01RDNOhBXoR3BKqoBAzWq32BX1j93gRHrKejy1PtzjwMEgvAUoLFS8eELC782Wv3gHizn3eXiUEY3miTFIvx-SJrtCFBhy131wsA4s8w12_e7_OSnKrThlXkmprvjTbSFILxGLH1y0qpkLVt3VZZtSADzDPLJPbSXQjkxXLkD_OAg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/xYf_38-N1jhm41gXTUPafAnb_1oi5TS5yJLXPPfQfEVwZJDA_dJ9G8Ho0s970TWWYSou31-n8CCuI54zIRT4_fv6HaX84wwxRrf8UbOoBbNzyx59sZr4g6IiYIY1ngbinWx0K1dC8UockjCmHqiQlqmG6dKnJrleaf3XEQIT6-o0C3cKecLMr85IbjR1Qg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/RjOWnc-Rhz-WAb_HTdc-gK1T7NWKSKY60oOYSJjX65EBJ1Ts7YU4WB1irpxpkZvBByZfyiRzE-wICPmkwHB1D-fW8TTxelGOvHJR0EmuI4WpHEwo1kLqpdb3ZUynkIqc16ZwQdymLRfyvc141qgXFJA_bkYErim8iNL7xrXONIii8rNCXpA_URAnOBEQdQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/_vrL1k98Ba-xAduwhq4jUW5h1_Jet1vXEjaJTNZ_i9FoNaI2FlxIVUPlArIxAJlNLpJBUMC_aHNCZ3f3WpjZMb1Be5fPWvSnZ4JBhxA-DayHRHGnMsxXg6MLXWHC_cDUneP5jTOiYSfO5rGkqxrHChhgYUo7y_nClgd0ZREMC1IY-5jOmW4rZOi9EuENbw "配信画面の様子")

![](https://lh4.googleusercontent.com/CQ3fKX2YVhqPwWyDZ_DJqORN7JyFD7FZ7lWHwdnCD629iVOx9LkO4wNZjrRBR_boO1iUhnyVwfWd0U4ySwTjP19sigCen0K8D-D8FK4EV7gYeJ-20kwiZI6Agff-lbJyBlEynWlu_F90XWwwgTLNIJWXfzTIi0ip3I9bZlFAr-U8GDDfWJiLJxi-PA8bOg "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/55jp_WLBl42p8_v86jEDlRKATNnYFZdgyyKHtFWicOgILLJTbhwPZlLr7wME-ePJz8HUR0IhiEtgZGWpHW0t7fUI3Qu2GSQTfMK3ft4DkWcL9qI5HdTmYrib6AUiioOUyaR-LzSC_vt2UM27o9WTKsmgbm7BGwE5Sr4z7qVvhfeNjkC6uDd4DhyMaCdvHw "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
