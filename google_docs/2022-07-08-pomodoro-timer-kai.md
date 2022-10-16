---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/BZLTDcdFZ03xYuv-HlwYmsApjR4nNPcsetjw5YvCA43hbL0HfKowpt3eOxVHdY8__gIh5vb3XnSNyiFdVRnDBBjrkZRo89TNoYgDiaZL-l0v5dR9jLupMecEhvqeMo3MHnoIXLC6MECf2FL6_CxZS0c6Rm79SIDEtpI0aZUj3KAG0jNFDKz8HCOA8w "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/aTj_5V7oi_vPYRs-noAeCpaDzwh1_341q5YkQJ23djHbUFV9CPjP2XA96NlBhnthkebZ80Uji1k4my6YFDDP_sWBdYxVF4oW6WGDm6gXlHfJlavgGiobgUt6gPkAv2toBBejVZP7HwuxFDOb1fWMhkoph_j9RLblCQv9bRay9Gbk86U9SfWZ5H0PUg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/mKWvF9VZSdYjdlLryyq-rwWZ9WSXvuR140ARr4LIqdBIYnQxCUqmbQbjEmEgyiBqahe2J7TwJQjmGJnZ3F--7YjJwnN1KDdGZV14Hkxt2v2XJXhFW0mN9n7lEoQdaF-rqPt31_9hYgFXCu1xzzbImdz0kWDElz5v46_qpFldH4TyIVMpTnrsWWeX5Q)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/IDH31W_1PuohOHaIck6i8BATxRp7NkSkI1IKkzu84FShVkrWhnGEkCiSim3MtS1Wuqol9arX511jr5iZpG4RGmN40v8SHXDktRJz_i-vWAVjVgcv6MOWI5_UIfB8YxFSQBz6w56vsH21kfwgRrOb1EW80q7y4kntVwx51-dl3ISpDfeQG0L43MPqdQ "配信画面の様子")

![](https://lh5.googleusercontent.com/-xInJ710iI6SOtkeqGqWCm5Jgs6Ay99_NdJRBTUvR0zrS81jawYvdx3Q9JimY8gUauTBdGywEs5MV1fGLZwWtlUvFlIMu4ByZw-ZEaApcSQgpvjVNtnCaQKzYEXmSSMPryZm8MKxdGxsYw1QZt67XkAble_57M--AeRbleYZpCkeV-9jV7Muoxj5_g "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/O-4cwqfI1aKnZlEnnzLz2zEqRAWUOzSO1AhM5OZyGi03qB0FW4anX3jheP_wOSYEDmx7CO8asoqfmUQqUX_exwqfFVsWeBu8g1qwGxQrNjQlBYYX0w6zF5F2YFg2Wl7_jfMgCB8QkCifbsEEsvXvffCmfivmofmjz-JOXCzNcdF82dQoGXOQt24YyQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
