---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/8p-yrYjSLS-UAcnJctZ7RRCX5jgzKlSTkaaa_PbCx8faxOhFlIPp7MCgOTwtYvCVb57IOTtreM9l9R1VqTt09pzm7gnrW_mmNY3v5obhoQp8wbjOkgpVl9d17y4wCcXPyoV8b0GYHvMJavP0Z9Pt-78 "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/aVJvPpzML9vYbgOpbILnpsXYL4LkadLhMI_bdy58XbDNXbSz_maLgsMnRgjUQsCFh29vY2j89gi3R6JcED6K6Ub0o3Jljp723HRNVfuPCcPkGMimtZy5bgKUkIQvw00gryHM45X94gHOdmKqcW1NIxk)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/0y2qSCBYUzuZziejHZXupBSH5asP1aBWeAzqAtm4-TpywJzVIq44uYwDt4Z2IUX7QX4uh3ZcJlDSqOR3djHdbMqowf3kACna49eoMVqKdL4EpNqD_oh5h5Gc_0VMqQ6G0C_jMj47lu2eK_OGrv4Ig5w)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/gtkqyK8TiI6W4vWSMALK806c1FluAE5NHk06BXRsjTac66_zslpQLFx6Ou2LxoAhjZs4WiMARjkPfrhtMQWfSk_MzbA1ZdkDB1vZynLNqmBb27panqx4RFdnDNF7Uc3L7agxGoINbtfCO9xaZetHZjY "配信画面の様子")

![](https://lh4.googleusercontent.com/DbBK0FX6x_RhlEqq8FFpoQbD7beYWnWvF1eo5Hvru8k6UA99be7EiLyuMLe9jUVhbOjBj7guo1aFuu49306XOZKyXatqSkd524pyPgn-0xH5SoWzDtM80KeOzBlrbDFL7eyJ_wAgtYZef_jmOUNsGEc "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/xiXaEwZXeFu_0KWxNtFLfRBQa6OQ68sDhuFNEQXWYAVXb2Y6EdE5egfyCvU3JVkLLV9dX-jM9Qhwemv-ynvzT3RCutXXZbRKEPC4F0T9-2T8-qLXKxO1lBE2OqfN3ym7p5pq0AymgIfJuOA0ge2NYAA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
