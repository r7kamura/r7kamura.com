---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/3gK6Ad-9qmxJMERoYUwRGjIRvRcL9NEoiKY9E8Yy_sZF9QmC42qwdHXwmeKSVI-WyvnL3uqmn0PWoW1S4yYRPA2mLTH2mXg5OLQClHqYWDTTUfFHhTzeiFQKoeSPgQ3A34Y7fYyNxwd9Uzu6fagM9I5e3GLgVtGB_LziF-9CJmvDBxBDvMTB57bGpArnRQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/4MVX7xeIq2_pIZZJlfqgyQygpbtrbFaPMlxN_e6zBp9WbIeCal_vQt20eXuEAJEoZqARs7WNRlre3Tz5Fy6v6PBaPdCvHR_FTZQ_TyG-m6R-CyOis5LtIhFvGA4yPaJOWEML8seMcqyWYBloSjmUIVnNFdh0YWoaUuJ_JS6SRRMd3z8Po4WHIPWL8_X4GA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/paTEpDNfGjwdNXKw9iD8sknWUXBPCbm6V5C810AmTNk7T0aPhzNUWR4UBbw8C02dSBblAh2Il3rRzJUc6pgxQ3Z_nUqhQwEvw6Py4hvItSec-OAJ0cKIs_wgyg-GmCdcw8BhWnQSw-B8Oqrka0Cb9N2MVnuFPXnyGwQfMw1rIO8sPLIAcWix4O3zUnEHnA)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/Ehrw0EE3dVB2LW95jaHYalZFL63Klr6cMXRfAhk8rL9YDD0h7Uyz9MipDchP67hIW_ZdA7jNwGB527nnxO4z4mtcwj3w6jtPk4kHHLh29NsBLqJjJy59SCPrFJ2ngJ7zWLGOAkONFeqAKGeIm3uu-5L6_6cgz_qRbcG_9kWcBQtjlAHxHalkmQBBcaP7Vg "配信画面の様子")

![](https://lh4.googleusercontent.com/v5sQ4NBY6UqqNJYZTGWkJl40iWFlBPx3hHD_ppJpgdGGqBcm9SD-HeO1mjluo3it1dQck5BfLI9k0F-hPXFw3OWCUfSissiTM7zI77X16J9CGkdBSvY-DBGOaNWzFkNtTJWUTUl5cGAh44WBbdnaNaEcRirfn9dahJLSw43AOyEZFGTcCH5CGVmuRfU_hQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/pt0LsrsA17lOkWD648D2qiXYzK0w5ZyY1YySaPLo0Kxz-_D8EjJRviaRLtTatCzJ1_kZFTeEd2ExMi3jCcUjx4t-a7L7-RW-ofvUhrzchPLpAey_gtWD2k5FGTQH8u3RdxKeEpU1-ZYUNVG-MJIUMd3EnuopIKAAa5yjNdfifUtz2apfREbe-_n0UD45sw "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
