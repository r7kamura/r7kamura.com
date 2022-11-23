---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/9djdX7U-VC-tJUMRr0vcBBL_-tZCFDZCZ0FhdglMDxvlH1AjnzXoA8eInh4fS2TlsynLQgfSf0pCzeBg5Z24G2kld3kzIze3sblHwGiTqc4AvC6AzkewjYw9rDB9molcuI8raCxGY_AvUb7gjI1dRnUeDlV_YSwGi3ER2EWEziXk7zE5zEjW5t35WchICw "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/696r2qPBIXwI1TDkwOECgbSz1rEn4LhYkJxmKfmXg6Q55ByEFu3j07F2QNl2avHrwOfWbUw5NkfR4EEVhBQR4lmb006wGFhBW5AQt-5cTYz4xTvr9qAqlQOZQccKpLJEKU_V7rr3PT3ycCLcKfxoqLfAMC8ld2fR6IxUwkKOOP5zX4HrmjBGAEedVkRDgw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/CZkrg5ZCXbV4JjN5-9E8TtBWj6ZEORRl2JrdxebygWXscb0YQvtboYy1sKN5VNNW-7QuElbg7WuCgmY3hOaqLxeLgZVOuPgJGNIA950G-JZiND_CvkjRy8whX9ccUV2lx5FJx8ZEETFP0aKPvnwTf-B4kV1f0wp_DazVTUBGgLbI48e4nfzSjtgnG3XB2w)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/hyo_XGQFkssUjf9wY0xfh1GCIznBz6tPGdvIGyswJQ4CQY5ekFIVkCbj6b4Wfhy93CMZm6NBMmGFOFyVhvJXvEOFftI1-DCRNsU6FT7fXono1OPztHgt9BXhGA1h20Z5nk7lSEMlOlh4KvGJUZl9u0cgohJtJRxp4LhlBzWbPC_CBBb1_uwT8V5kIoo-CA "配信画面の様子")

![](https://lh6.googleusercontent.com/oN09Cwqo7U2GWtQkLxGjS_ORit5GiyEo8eI8nqmdCY-96Ltxadb5CqknQxIGR5rQ9VJ4hRepjyRR9qQCYG0zK4fGNJOirDcX4sNHefwzLlpXXQYxVjk6ewZCCPKU8h1mrqKCnNhmjZqoMKfytOOFi5FY4MTCdO16H2GVsyBY7lwDovx8slMGeBDsUwr6aA "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/uI2HBXP7RJbu5i32xV_HW9196u6L02AZcEpKuijZNupwgRHPoKCA8qjiFM4Fib4V26YSDtI61Fc8lDh6NKvE94APeq7S9sAgAw75pLwGlOOv60IFfXAWX7FghLbJzjdfAIrzLoSLDPz30sLP65eL9GH41ggRnlZVqDmd9ri4uh90tQZeN9_U0gGZ3K_9Mg "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
