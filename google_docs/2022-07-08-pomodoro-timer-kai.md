---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/kRvs6_-0AuCJQYrrFUO9owOScRbGncmPn4FAhLb_95S3ZnEzNJ56P99_x__fezchd4jyaE3HjnOu3AYshq2v9x5oQmdqNePpoU2lEMf6D4iTxPz17OvofTM3gU6hptpoZvQLYdOWDqEXPVisY0EqYrpEgPvg9FGUus6ytrN-2u6g6Q_KHJVSf6KKHWiy2w "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/8dd2aGDr7vx8L4G-yJTgBDDffY8vvoetJes-ZVyLO3X2le8OzZkT-iymrnek7UCBxM3fj9WoJEUOTgMLwzlIO5hdGlGbgfz54tgnDWln_xJHSc0hQj3AgTBnRI-UAlqe8ZkqtHzEThl7tuvtsi8Uu47e7VcSrL1_EGXJhiMLS3lb0Mp0DR3VChr7Qsl_Hg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/w00qL-6azurxAXn_qznyC90UVVrOL-tmjt6Hsk4XNCtv8PbnvBnaVQYTniq3SDSCdzj3fP0JoyJM5z9Cu_5e-BFCdSBfKI-3mytuIcyWWRI2ZAGhQHor9UK5edQitgnwEkvyn8rAqSBwg_m1GoEpyWiG5lIg6k8js08fBX271FnjwKnrKv6_FeCs_ajaKg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/MW-5-EF_xTwnB4bRRwYjXnF7xUj2FIuuFhIv3XXYF7GlHu-0HYViF24lrGn-NEqzRwiqbszfLw98SQe-LrjPP_CdUuh1Mmq--e6KtB6DFkjHYbLJU_VD2Ns-LGjWl6DT6Xqd0gLGz9RgfXorwPC3wwwJcJ6-b9SgafRkGvqpE8NTAlAuCwKtBZtgLhqprw "配信画面の様子")

![](https://lh4.googleusercontent.com/shz88k-F7MYeFIlkz4CyCULoa0-gxbCecphX8DOIBB_bXsocdhyFR_mIKoHJrx9IQGkWgO_BzQqMzniCJF-d0BG07SWABfKr9Fia06awu2wpYYxCt-ki5NremxwEzf38ywMHdQYo7plQAlf5sNa7VXJG-FOl4z6c2xdiny4KOGqm8b70GpZ3Wllk58sOXg "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/O61MKveaCjD47SVDTcE8xuQVaUOnc6dZGDH17GgVK1yG1zG17IG1-pY6WsqimTtmjyDZxfgYsOnbUbJXzzJz_V2tU_VG30aHeRVJ9FrJkQnx04YQVg9ppSyj4owTogMRI7p2AqvFgCvhXkJSk6_FrUeFgzw56wmvM2_LAPUbcGCx0Fv67i3sOpLgSA65EA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
