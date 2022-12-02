---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/upr_mCOl0w4QV6Y64mKCLkzg7dOn7CVB_qiEvZsP3S1GHrSNR9CD5cl5YNdiKK9KOHNfL_IT3ThYCVXbiLTOlfa-9QT7fCCYDk6qd-kmpqksYsslPg6D-mYNbueQaY2dFAYzH_W2zrE-BiYSM-Vkb8lmWMUlpNhuTQaRTdaI2Vas5rhCFczZhUigVsWC9g "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/AmScsWN-lSM3w3TjqRdz08YKgwAfqp7oX_Rcy7UeSpvV2pjMkSnvatqvspnZ2DRwIFBOQdtllsEVxEat4eDqcatq9-SnKbTVonMfQ4cQL-kECdnpPXHmt3szUdCRCCyWuIqPeP6wA_sks4o0Zko8BuSGqgRDADPs_5P6Vggwhh65VqGuTORMUXk5VLRmTw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/eE-PYqt4L9NMg27aGMEgmY3zDF-UYOj4eNpNjZlquq2ti01kQi4ex7PBH1IYUHT7amAIA6Nxf327hUFo2hqt-c79HLRwVi6NQrXBwaC3QxN-RC8wGYH7DjzoM55olvppnJR6_uxwZ1EJaT9BlU70K-SDVR-YzDSaY13aNgSyFo2v7N-HTqT0-AZ_S2zktw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/lEY-_c79PevMhhGb-BmIvaDMBe7lXPbyrMfBHUdgC3DWnXhn_O-GAdXFhyluaOvHOmNpV_xSLwaI7zsEPYcfBTVTIoVTHh1_QAetNMCzdwS57JJDb66Pc0LzlDB8hBrco6f_Gp5SriN70GNGTjpm7GEA3ppnvzwTvb9DsTTo49w1L-I6HwZm4nsz85RoBg "配信画面の様子")

![](https://lh5.googleusercontent.com/aMVMwkDeilHnZMH266WHBu4UWwp2ad3FU1A3bOUEL5sh_kcwDxPnjcdmhyMfoPaPkaIL3xjDQWffJFXeKDyi2Xnv1IvKmbi01uc2boIoytzNzxdtSanupj55Bjl0tRp-_6nB8jmVEOoWIBgFTdhkJ4cUAezzxfjUu3qEkPzw-dGwMzQrn3l-64VeV2q0fQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/P5RuUGm3MbgUSNQd_QmEZhBRgDanE5Fp09G6HNlAsqvcEZYoGRr4WXXFtohtQz7cDa6qafyMi3UPZKGEhnqYLMVnPDCarXOXxZa6t7EEPU2uUhrVD65-9zaFHpm13a4vFMBKbWEL-YkHrCKSW6m--YYWwUyFIYDoGnF5nxKHOnjP0P1ER8bql47qeKHHSQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
