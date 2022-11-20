---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/sxt_uUnSQlk5oA4KwJk9tgJbGgch_LfZ11rL4usIVySny3PAwZ-fnmln7464KzD0ftRJVF1d-sMDen4T4sLue4-PbilyxvsMpHsJtTShnA_Cu7eijySUbUsft2wClbZIJr3STlKPNDgEtWJYZp_PHRkhkIfO-PQVoONVIdMMRxUWQzSXqT7d9mrNzui3UA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/Zv2C_ux0Ya2qaM6t8LLuxD10mQUnNDQRy_qjYUDXeUseYD_ybUgd_OC9zjYCvw0XWIK7wmw3-xE-0FrIGH7NZQ0sTu3RHkPtmFAcadQ6FW7CVrpOMR4Ks6iK7CiBkaOGgNiFlt3UU-UpMjGNTnAXkatmR2R9HLKKOR-qiSWCPSCmqOmQXSQe6Ujn-FEa6Q)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/UjxCJ-PLBBKDBNY2NYW_52BZTVKBT7eiBC0VE6dU1uKDP4sXyix9B9n6k4dsnDVfyS4qPlxhHxY4nCrq6lzYRRVHBFBKsRnN6SHbx6mvF62gt1IiwhLD-a_QipKt63IyBNwVqD6VJW7GFSFfRhM731kmNRNKMpoiooxjJRh9JQfwDFZAdxTR1fsPvUqkOg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/dmNyBKwn3H8HvX2VUYaocJ-LksNptW4v5YsLZqodrMRcbgNXIL9UVV6Rx_QiM9uo-3wjM5Eepswzr5zGSZLvBitG6PwYm9ug_Z4amOdpqque6qC9LULZGh5GXgfFQCdqJ5TFFvm8NoXhhj0pvV0KMtj96lplBi7d4qWaEAG1q6vnPLn2pi_YkYZOlwBDbQ "配信画面の様子")

![](https://lh4.googleusercontent.com/VuPjpeXTiWSZbrwp9_17-kvPWDGFnq7gEqz371cHpFO9c0VJdmg-BrTA7qOITWZPgxDkxawsFEK9cDCa44S-iSkTOGw8KqmkkJqtVoRnAWin3BX4sbal4b3FMnZHEwSG7Cf5gitCmPXVGeCTwqIjmyQhKZ28SUEydIWQiW-Y3NIL9bvQ-R307a5aTAHkgQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/LO_goZACK8VyLiST-dVRHvJoyAeijHCGbJlgTQ95I8rZTujyoI9ZI_HE8EJjziri-CT0Aj-RclT7YksJAsuMktbEBcHr0d7Ki-xE_ET_3oT_EyAa_mKuZdfFtt5jzzCHWz-b_NntUUAtQnMmD_AKPWHtjzG4RZZta-Lwya6guS0V6bY27LNZ1T6YgkU3QA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
