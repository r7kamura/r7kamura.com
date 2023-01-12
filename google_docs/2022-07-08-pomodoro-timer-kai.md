---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/djNvdUKhd_MS-KtHXtnGoiGAVU0fVrchKFw3CTNcIhQSA56N-N7xMhbzJMG_u0xfTVYZyIvmyw_cHbn4vm0SE_XXBwMVsXGjZthRGpuF4cpBUjDDCVxC95ngC_P2j6xaC-onsYN99vyxPq7UJOsX4Ts44E7_2KTZ_r6eaK4mQ-VtEB-uZjc09RSg18USAQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/Stvbjbyk_NCz_PAly0hTnQmVmI-xMFlJEy8uRoXs_fGp3mN-75E7rEAjoTuuAcdlpbYwQnO5YQDz93F84tHKWCuJUhPkTJ_sNCbsbWJORJPkWalV2uQHSdOOIWEpEZ0LtBSl3Bs_V2f4GB_Eky1Wxd-eLIXFBVWzzvNguEz_pdmFKVxQ0QKPotCVX5t6vg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/CmS3AgVUwUBa-oYu9IhTbgXJW0kDpSB08O7LslUtO4PN_Zwak4-IeTu-bnjyP8VGn0m97exQelB9my1VTGy3l3Be4swll_GS6u_SrmEnmBaDlu6wHHkDBVhHY-c2KC0u04yEFWWmy3BbqDBKd2rToJ2p8TxvMvlywoStIOu7wqN30LCbvISBSXtuc_aN3Q)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/wNXWe9NdBCRmcYl1zNu14Y6SyywMIZWjL5R5WVzGsTcdNcbEtP1rii222s-4q-_J4130mNLtd3toP3uwds2ITJ7AhxK1WcswQy2HxIeylsJ7DhwDN2JqKCWhNmIIlvhb4H3RsZChD-AmxlnMSJZLwjo9Gumv7XxdS6dInSMQZ9ox4BJ8fV9djiaxoDW0Dg "配信画面の様子")

![](https://lh3.googleusercontent.com/ZKIC6wJXeQngM4qdYfI4ES3BRLRmz8Hkz8h4nlYbc19Xt8Sh0K0_uTI8a90AumKB8EbY0sKWZsKMTJCSnY15plbV5CXONqC9n_Ma_dkVr-EZUjMLLNs3wxWGtu9eSWKbXZeV0_wzh2xeQbAn6qB38_6MPM_o9e6E7qj16JmHfDHKwEQgaelRupwmU8VHhg "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/UxrHL_MjWubZYgv5hUu-tESAAwZCn35MPz_IwZgca-AXUJeHETPInf3WzoVV9gupFGedOclaH7lHFnzxlKSUfUHQQW_0UnMozDPsPOal3nvQcLUoygLWWFXEsGIyImpY_PWC_rLPkqd2w40iu4RJ3-r5vfTRPCty5YB68xQTJnn8AV4KYezy06cQ0yEB0w "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
