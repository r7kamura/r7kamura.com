---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/3EielRs8YLC1AScNJXW4cfrWYzKK9bIMEspF0V6QW8zMBfUh9z9I3HDDzOzMoTCcoHYBRRKy5GBLPtOnu-3tup4sOg2qKZ3KAC1ZDBw1D8ih9I3tf96PJJ5ofRcdIzIe-gpRrARMEOr5cl2dnVNdtXl0dfO_TZG57NTXFwDY9bhXbxsHJk9dYjhT7g "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/lCHiu5FkMrazvHhPa6SaW7mBRkghvx4_Gok4lRUb0wnt87HqBWw1Xe287dHnIWqwymOA9Ve_ZpKeCFu_AlViNOTaAr5dEP-782FRIMbyX6bTRDbQKy3kPsHTrZ-nMyZmOYEggeAoYAA6yte71zMD4-BSn2ZGb0SLMTr-kFhIm4XC1fsSVku6TZGAFQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/EVq3qdgRh1EmwCvdHY2RFfWvK4dQG9WAACeSRFYCEI97Jh62JjWCc_e9GjYtxjyn6i8mAw71KppoMlBYtOlc2iA9-BJ1W4XA2jX9jExQGV-fgr2a3emxeq5xMqEfzT1CCQq5oPjUqW068Or4U9AHYPCv-R356PYBJslM6BqI8LfS61p0rGcuR03bsA)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/E4Ld8lmtDAlihd2KtKCvKekwE553LwJjKusWMmdGFaR38pd_2AL4XP0kOQDzaPipO2wgZ7nGnk94oy6zMZFfyy2eM9hpugsO5StB31rwntVy-WtqU54jLYJmwROEvoBnezobMQDsSnsatuiNQfcxvOgw_0VJLs37zPbdd9eIgMKVo0rMgnP30ejYGw "配信画面の様子")

![](https://lh6.googleusercontent.com/GyYr2w0b0yoNfIg2vIv3wiqOV7m301Ahn2yp_uQWtla2lQVq6n1l5vLMY5ZgcIH7QmVGW_Di0Y8SGhFgvsyOYP83KgcZOF46QgsAY4uCtpe6M1X5zTRM6iEKr4I_fh2jxzmk2z1MH-t9fX5ZCnFzkrX7sxZrJsKZbKDNXDwf8p2bT6ANBksuLwQU_w "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/plKBXSg3qTW8rPzvypDK_aawW9BnDbBoPe-lP0K0-1hrM9A3rtHnuV-F4nJihKWxLY6UdfgXQ4I0T4Cc0f2yls6yppPHosStSyDmEfK3yn4dgbRDmmAnMKSBBS2IcFArt7943jP_32GanKMP0kzIIODcYXP1g9VXN01VEnJOpEeN12ISPwP9b7FvQw "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
