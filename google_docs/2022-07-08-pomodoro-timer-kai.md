---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/IU9h98yPVJ712_jymlrjpt4q80ZMd3ZlXIdT_ScD_ybY8aCiF7bIv0Kh61aaJmJGsyEciyp_Cfc74_YcML8KQJ2bQ9Wq7jw-Tz0nM0g5KcRkHa9QtF19vNdgt3ea6xLjvFKgC2-o5YijCQ8efo-lKPIXU6T0ldWaD2zA5FQpKCuyA3FoeGC77eXkT8EsbA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/enVU1tlp07XneL9jsq-aOFq7-j0oa5aIIRAASivN-vG4VRYfhCI9BWPPcADx2Ok9wvCMzuBIbY6zFXhWgOZvIaS9Q-On4v0m2NBfFeS5_287HT9UY-MqsWs2KpJVBbyNPbfd_kqDHWJjTP1UpW_Pc-qRx5MX3yCaj0PqslPGetWoZWfJrJzm4syNt29ulw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/NvC6stb3KIs_DaH9k-4ZnY9BgcYXQGQlr5A7iOvH6K9G0lKNvJtTuPzC2RXLyj6x4J056ufCguPoykF3sl8SEhMfzMspBv9VnElQvdOk0SG7HWXek3hqibfaq2F7E_HK3RB7fWbONFR_e2T0u3Yyni22GuDcy9sK0nq4yo7iHv4A0eQs9nvw3BbbSHXPlg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/3RC935xbTRigogguVwNHY9j6ErKWaoJdTl0I-GeGiMT91Yld3aYDGinXFAAkgLiEHA52-j2wX1nFXpcPzdd9sK7vnTmTZPMzJmlmRU7fJ0WDatV_h9hEbWZpnPvfbFH_1hDMUimkMH10jlZ4Tq5O7__vjg9yNSHKuknldvv-uW3uhMYOmuq4HKeoBIyX_w "配信画面の様子")

![](https://lh3.googleusercontent.com/_9DYdyA0dFT1_Bs0nSXOU6g7MmMtAYHkcxlxF6dUhie_2oTU7p7RMSczXy80w0gccARdWADaWjbKmfleO4EaZYwTu4tGAUzTPF7UkqhXpt5UZVTtYfPfQuHB_kb-IUXryTQtZKSn1M5gfOsVxOmkin7K2Tifno5Vcx4rHRxaqPuPZu4FN2tiBFXU820Zfw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/VAjZAZ_XBg0GO269b06cFEQT-HAZ0MXr3MYVvrrCLGJ3CP2gmmF3AXjjhLuarGisNghtIaKfFucBGq1NW2eiv4EdGk3bpEuDBck3CsYkr10iRbm_r003zL-agi982p1qkN_VyyNi59njf4tBSzuGET2ijPNITC4rOIjm5vA5nlH5eC-ZB5i-GyHs74xjTg "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
