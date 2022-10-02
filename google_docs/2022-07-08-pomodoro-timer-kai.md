---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/tige6il1r70UbCCnVeDCSumQv-BFRbztFotlR71UYDlTQYjMPp8Pzfjm-wluQy5NYLb7Z54UUNIFiNAINKOzUWyadpZC_ePnVIFi6eR1A1Tfv8ugTPbMVSUNH1HAfKe7GE4eN0UP5eXlnJvkQs1LPwEF1dzYI6RPr4TLWzbzBQx7ABztu5l6ltr47g "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/tFWFoHKu4hCbE7J-d8FSgWy9JDtmEOUjYkVrL3v8kG2lbXdRvvePyEv8YQVV_pyNsRdY_rDceEeYoNFCXcdb2_2dWHv_br0NZJ0V-Twux1FFf3rTxbSDS2eb24tgsXB--k71TJmcjOo-0pfhbu8Zm49h60Ui8w7gWGFhCm8uA6lN-IFmFsm38d_nBw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/EBIDewbISVZY8-wG7l4Vsu4qg7mEYD-u5oeOApRhqQh4NHU-QR9ttXLZgh9VFtDbCpV5NMDWnO9_Dk8GJceHhdiTcXv8KTJuHHZohwkmR3O0CzCbiPEnY_MS-MGAw4FRsd-qh9IwMpgF848zOdvPPAGgn_E8S6P5Ct5MRoqbNc7j26Ds3UUelbFCbg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/a5E44Ghmb0KWAxuO4LxmZ4mvQcf0lCvYhTJ8jcthx5Z_Dn4j2vqztqaeDC7pIQZDehm2UVENNRSxc43AXU5mecK6l4J4O-YLvstcbDV8wzb6yqGL63XbtYeFwalXqZhOt-iuZ0VtLMFA9sFz5_YITtRS91ILM6KkO3pbEgagHd8-AKabpXwJWocB1A "配信画面の様子")

![](https://lh3.googleusercontent.com/M1uy9GO8Q77VcduwFoCDAS1MmnwZ6lNyf_J2Q9w8A8CWyWf4YEFjQbokUuFh1EfLJ3VQDwzew8V_GAP4SY9s4ts0nDmLYFoc2rRhwiAqbYpEWUUy3Q0tw6Ug8gO-0KYhCDNv7dBhJ0Kx-bW1GBJKsJdsZRTLnKABhL4axEwIi-8vPcG0AB1UCYuZvg "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/9_cqniYq92GepyGFC3D7Lzony7Bj_1s1UkTigDjlD9TXcH9XqaiZeOBrn5zuUVmHwQGrJvN64R1O2QRdHzh5cHub11bnM3zygO-duVR1jY7UuRR4jtZXXgDaUoibXo9F5xQ1m7jODVa1-FHxI0LlEpNKgc-mDStk0UTuGNvbUT1ChjlaMuXfWAz4ig "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
