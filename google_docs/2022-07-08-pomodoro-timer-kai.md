---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/2xUrprJPha3419fiK9pcfbiX6TJBE_b4m9riPr6AZCgph9BudD7F-Bla6zSRsSXbY3Y7HoRVSQjDVFghHsrXJOJ86lyD3rsFGDk-X8_nklcXB4RAO974A_W3gnF8zmJUrb5j-hxIy5Cg0yuA7EB7rLxbnOMbewhg-vFSJhMpqfqhwWgXFm8C3SjFDbP_SQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/PaA76RaF604B8lzP1uzNMWYusnBXfphJjSvkti-bFL1KLpMblASDr4SJ_o9OCWyRef4iXqqkOu6rDcJspPLY1Jap0NaJQMv5GydJ_PQckjSikdDUyYRdSwcP3m8ItpS6_AVT5VP6ls2J7UkYrJSIGeRFsBvNzP5beTWh2lb7ulE9cIlQqEStZkixREXOFg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/G3jFIrr1duMPANkG9hdj32H_nRtzF-j4VRcQ3fVAFsYl78oZu8cR16RRRtNQ9evpDYOra0Fl5Gs7ye6d3Vf8fGN4p_JSnDR4SyVqcAlZ2S7oFzV3Q5X64iT7pSE5Q8oPXR3jskOrdJpYzs21mdrvRkHLXWZMQaCZPoYpW9fs5HmagrZyqV2TOt6N7y-kJg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/sbzBy9uY73WidLb2cgZnkBV-vR44dngOVfJVVlABxdfcPRdprmVmCPyteEzfTqfZG16KMXhzc-wCqP-dbGH-umu72G2SL_SFNmXcacb5W6sKHe8QyjldQftMQEJwvuD8biuQcnpPBfoUrtMvOCKy6OjmlDwOflpXxs7ru_ar3YFeBS2Bjpxpd8m0TYdZWA "配信画面の様子")

![](https://lh4.googleusercontent.com/aBwGMGiq9TEwT9W8hr2NpTtLDNWW1KJds99DDl7gmiYP3qqGdjoq_tmlx-eRibv_N0Z_fLW-doOCO8CVLpxAFHsroUtbivef-iFAbB-30MAED2__gruf-oq23c00ve8VmP0HPWucSyYyQBa0hbpujrGvIQWzNE93i6ohuhJrTF12QvlTRLUDMWjF4ehJFw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/poGsaK-zgBhumuzpn_1WnXiz10k3RCSdCZPTVHh97UgcR2VhpobOFvv0me3YFC4h2e1Bh_FesbhKWQsDJ26PNYXaIaJHggmuQ4HLLkjVSaXomVmwUsIEeiGO8ES8FhSiNq1uaZR1w7ZaCTUsw-bNxpZKPD98EXok437c5labeEoosLGOAyxldZ8vnFNHJg "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
