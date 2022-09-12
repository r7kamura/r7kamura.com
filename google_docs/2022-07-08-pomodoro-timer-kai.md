---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/PGoNp6tT2r5s1iOSpRMoFw7tARzeJoinuLNIFLeYYvPsEN_r9CjzSJPEN_YU0hokWb8polkqRD9GnWAEspCsb__xcPC2Mt7JQYVh1CXWOBbJ9lwAguwi0uIZpxuaXHGO8kXXWFc6JStZbDr_Xzbs6n_JNisCibOWR0dMnMiKXk_hF1HS025L6oIzmg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/F6n1_27f-m0g2DwQvofUHoLPYg9rOTlCJ0NAf-JNnBQsX5Mml4bUjkHnTMl4xqRdHCuWprXfzWxqvqwamGNprAJ-voRH8Bzg0gLuh68QU868kpTORU_Bnx5qD3MDZ37oLODNlSyqBPlU4DarvfkX_k9D_xAn0l5v1EwjFBAJb5wTEH7d46Ml_vbboQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/P20VNz68FTwWqrLj1doJ7EclOoPIpuU1_r0rilnf0BCOtlhQJ-iPyfI-DMFmyrmc8CiKBNUFlOYM88-Pzp7_ciA0rzMHuG6G47TlQJz1BIPH_wmRAUPbW63sxAfFq0Pmxc98LxZZdCTF99T7Go1SiBMWA3XGXnKRmPrjw99FV4pNWyRVW4ykgStqJQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/p2SZ7LtfQ-xzv6GOiYKbUzv5NMUDA4k3hYQGn4ANneEUXhwUiTWyV6yiYr_x4Z3zOiqRT4fME6GY4wOxFUtEh1g4Gf17BUkMHzzqktNWps1YYhrFGa249TxdVO4TAYxDu4vlwzmzqQy4vsBx5Op4NtbLogIKhkXZMwIy_y94-fQC5ACKl8CZUOnkLg "配信画面の様子")

![](https://lh3.googleusercontent.com/tn9K5eFPMlOKpwWpV0fWvYwM8Q_XvLwI6Qo7B7L9IcjGhEHEsgxt4iurvkje22zFvbDXoC9yAak290vYq7z36PxlXPlEKIi2aPtaNu9G8ud0Dd3sNAhJR9xtkFj5qD_6iEm3dNvaojyQZJ2PV0KcO0iylzpqO9E_KYqJ7a24wGDfADlnKRvwBmikyQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/iz4Q4wBq1V_U_syyKCMMrmjuddUYKHAUOlVJbxZd0JxK8hSL2BEs7TXLr14OkNNgvApMsYCc4rbBWNcNnH-UzzClfxrX21gXMY22O2_rtxZtHWvWjZSTc-ew4q6sWE8NSPIw1lFOiHYrClqhORT2dj1hSi3FeftWNah6uNAdBNqrfm-LoPC5A7-x3A "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
