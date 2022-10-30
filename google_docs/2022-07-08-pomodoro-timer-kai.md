---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/Aq5w283SYJZwc5g-Ih2DGffQ-Piodo4afkU13LvX3x5jpVuNJPQRi8GRqkC0fDNdcigneIcXi6tD5BhzLAayXgTXYLh3kuORTanvyhUTqjarg7-EseOnYT1naUXPu7iqPm0OasREQqW3-vckkzZ5yPFWpgwW2jhGqms70zCcGXB8R_Y7kL9rdJvY1Q "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/utb0HvdVN7X3g58I7xzgu8pAt4gH91c4hoJTH-6z5N_5Nw4fkF6WYBPJymWjiyGCqsggxU_Kmu_KtRu1cSOSFM8scNrAurLdBV_UotQMS2PuCpO1TS801yFEth6ETOIW9ad9nDkNXf30-_1Nz7sHJl2HMyw65t_C1xZDuDvklP4mo3Fi3uElHYvDbg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/V1mzayCcbsBFOyBiLpCWYrO0qu4Pk3koYmdtiCeAlYeEPjLzvTmCWlrWRu1AmlE2vibbuBx_4nla6T0tk1-RJMIK_NPlZKnIPS9vAVnFYoiP9I3wvboKwxO1Zy6NsuBRmhB-F4hQD5GxCsOBeppm_nHkdyjoNchxrf0-6rfr_m1krfoo2x_qaDR1BQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/pGvDv0-ZZnH60ANkPV_t93ZPGJR7KqhEI3NV_1l49rWhTqWUyZn3qCvzPhRpUiN0VzqP2wZrD63EzZ9IArz34VnYIwhiEP7dIsw6EOHZPajgqXbulkO75J9l3nQ5PxSPSIl18zNjj_HqfCTH8fHVf8_Fr3-niKhKrdzPLKmcyJZCfyeVQMtcOgduyA "配信画面の様子")

![](https://lh3.googleusercontent.com/K1sj5XpQPmgKzdh2x2DO_ojiLelGewuZ1i6CP8OgSBavcE-7rzQv9mvMnKkTCkbQnVGlqyJVr92VpMWWp7wpyxHwa5z9hw-Wf08pPFzlLHRRCMmIFxIg16dW7WXMKvcX7pbr2d3PZ85kp0RL9wVGvsojz-7eL-5Y5Kpx9xnzkVcAo6WGyqJnhOecOA "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/9Q9jabDnMdN_XSMVGosPmh1wDWEMKzC2fNj17Nm_KxYYV9nrdZnrQfKhdt6MMTzqwq-R8SQWKzYOq5CgzS25jWwiIkphdj1rIZL3rSRsZwoGum1LgfTQhL1a390vUGCeNMwsypOX_vZ9uRkdDyphcBkp5PhFbSDZDkZaCNjFqXaFoEuWAUNY_I_xMg "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
