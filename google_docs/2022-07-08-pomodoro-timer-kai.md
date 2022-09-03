---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/jfrVMzkRMq4Ia1d0M3gfsNI47KxkM4-gPO7-9fTy-2zZyIS_wVelbePOCVEJX03yGO_Sls49yJ9yONmxp-2B_w7McQxXGrpYSuKXlHwC1H6ePmIN3fmJLRsUaFejqSrlaZSXlHslBa7RfkxAZpEF8dK9Ec73fjsOEGut2fJUuh4CU4ebUj4_3FJCyg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/CgYsvypEc4EEeJxqxucxAKPwD11YFzJaGMTWpa1m_WgBLDnYNkId9hy_1lhBzfsWclp5o3Fki6adUTRgYfk0bqR5MCiyY9IGzStArMyeeT2n5wGt2SpgQWn6IZKPSjDH9vSJBR4omUbRi64T6x0M7DLs-3PbuTDKIVcx9xg0kSqj0NcrZZ1XRJeSaQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/4bJ4gTl7N8HroigTqwD9x_eM082TQZ43OWeI0Z5EtgTA7_QQlYwkBu1yivq-Tl1Rys8-IMMkM-OA_4artrJ3XCQFIfG0DofcgIF2ejquj_M7DWi-8NZbyR7ZwrZXun4k2rqW-zPjnEVmD7Ex7AtQqkf2ZuwQiyZ0mVgDN-HNUU2Ho85V0j-L9gp-SQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/F3peZujY0MxS8IXMeZALDm68gHVDRiauDcxgShkSbfO0BRni_wgZQIrJL-d_R9xvUGoQmWpE-7FgW9MXeCC9bnFxxR1s-NjwvpvWqjmwXwZvkVoA45kyzWSxBVibw3cSoG6XAr7VCykXj-BEaK61Sz7mDcKPWtG_5E9ZUsdjXvKHn2gQ-ANLk51lCA "配信画面の様子")

![](https://lh5.googleusercontent.com/afRlYri3MHbZ8pJiQlOKSroxZFr0k5VpTfhJ7QsHHEKicsClEFzlWmlm3l1TJJ0S6xh_2kucLV5WqKHdBcJ4q_cI5wds-t_MVeZ2nwHo9xPSlKp1NFBArzxpqeHqITm0DFhrlb7jrYbNUzM_6Ef6NCoEN-3J0Kb-Kbae4XUXInKoDYn-MpzLC-mm8Q "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/72vygXQQj3iFIOj1oDDCTT_La3utrAXv_KQPqnheBIcSe571ZZY9Q4KE7lOmkVyDtmojc0kiXggR5CjZ2aZorz90gCiO-GMFoqcoN7W86uG5DyAkFoY9PbB-axzyt2oE1YkFz46-K47ZDMh3BmOG-O2UGIZtd0HH0x7P03RBLf5M0HOMGIkwF-0fQA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
