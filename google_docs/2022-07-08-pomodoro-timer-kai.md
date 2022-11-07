---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/m6duQ28y7BbwKZQh4Hw8Nq6Cbot-FIefOR6KDtfCrG4K5LBPfAZb-DBhok6xyWAGUZe0ZyeCbY-Pls-MfilnIIf5KESivN5NIPQ6paGBk94_8xIVfKIU0YHXLONS0hQ_3KqJocz-sS3QpdRWRpl56r4XROHJ4pdCq_YPO27Mx8lg4lo_f6BjKVfuaxLjBQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/7OJqcsRgt-gNc-edTBaT3MhzhXh4UwrrwTyGUkCrPoYyYR5usp75EA2w2XljedEZiFE0Tgfth8tTQP2N5vPSK-xbCzFWdYCaS-Msq4fAV0bW4SoWMj6y9Yo6JnPTH-2ysHdE6zvJf5nEDVIvFrFlDAD8JmWW2YyzFR8XES0PZnOOWDfAh6Yzn1YAHUgyjQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/9RPfVzBuQq0_XKFfCyRgsZOsdbPHQv4lb0ZvZmzFEgqzDH43yae4BzTtLwId72Trr_6WtKAr1wpepN07Je5EBGGa0Y1OkFkmhNzIYzR9QVfaxQb7Cx9N9FObVA_t_0QqfYtL1_01ZbG9UpauwNNrqXvB-AOBIuXtDmCeD0fN4fy33cPO4b3exq_8ZPBQPQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/jAcLJc6pYYhA1zWWDHkVRo7jGtqm0b3AmXJGB74wmplHMHjwhxa7yLZj7-e3azrkLPIJMhR09C-xt5Mc_HuUFD1yaErvxB0v1aosKxlJtX56ZGZ7SRg6FYJF6qXAh3gET5kWqgmt_6GVcgNa5ofJ65y4LjNlBAF_GZU2MtVcFRTEKeVQgN3kqdTt_Gp6zQ "配信画面の様子")

![](https://lh4.googleusercontent.com/YsduJBoUpCdRUcJDOzSpCviA7Rh2j5_8kuikQNsGoDdxSZIq9WHzwXKzhf8zdsKIBvRN8tHiGmc9bzYrqpqH3BUNbvqgSqJmr0UM2EXn7CMa2OmoxFcWAhs3ze_obTnkEZKKnlOcPkgsTGTyAMAOrkmtGnsHN96tlspnC1xYNU6V4mt-CMxTFxHfAzbi5A "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/s3_vIhzk9CvAY4k4mYcqAZGScZuz-E0kROgvN4ty39iPRw1RP_N09yG2_KUdXB_v0Ggl7IjvcGItUQY9P0slvkhs5g-xyRJoaWnDvaTJmogn0XLaAi_ydVDwraEeMk750GYZ5jemFIASGPAUFF4IvNww6Kyc2O8graaWscg9T7Acg8VAaiNxjyMSimwILg "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
