---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/mdrF0t2H_TbYO6P3M3pn9UXS8yAMfwZcDyAYpuZjk8kiTvDHWj8XAKiE99v6XcdC2oJ_qdPGYj8DQlvWvoDAgxG5haPCbc-KTJVdVJucrZdDpuSoIjspRbroitAT0Xb9SvnUobZvk85l36xFc3iZxk_7nof4o703_3t7oirCRFLEy94Im2Ko-Zj7xA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/SgoJGVied_PpzQGglbG8HNIA77bAgHlebYAnN9IAQqAN3QeoHDpxD1nASy0gL4RPKxfJzIu7YlpTgbIleHPP4dncY5X2-eYMMMcHYlDdn3KGp6lYU7u-AxhtKJWjG6rDxXhfQX2S001VTP_C7RqLrKVXTLK8KQxNRDnFAr3UiUmRiKJESJ4a4zwrAg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/m_Ug_L1qf8BaCrRbQp4IW8Aq5GwX5hq_cDLYvinFiWvczR9_1tu2LbDYMCBczMODcKcD7pZUwpsW1YW102UycDjz64uekEHG-N7WB6mTi-G1cr_k_WJXDsFkjzM0tm0urjXtRI5G3mID88PrFY_CN_mw_gSgZWkfTmLSGhH7j-WOqFGlNZ-gnzltUA)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/zxz5zmLU62YdjNwSvbO7AyoVxa650Og53PhaHoDPupjLkKoONjyzSgjTisJgCLE58S1Jao_McWF4-nFgRksNuVs2JEaS0DnzV4XrJ03ZFdSRIfRGjf6tgeegUQCgbqeNqtIG4v7fTBPk5UqBDKNY624-0jIhenFr0mYfrxhOqW_ASjhcGIqJUmRItg "配信画面の様子")

![](https://lh4.googleusercontent.com/ik-Yk6oVGNbP_N70Sxtkff_WDZFnYaLjBak-rNZWiP37G72k6VKzv0HMSCd3Hy8GKqMI53AQDlRbs2bd1SZ6roqAD41jPPoD3bPdbJ-YtgtBVQOYkMTNTAaBu3Xwu_g4ux2YWvXbk7qsqf6a8Eg1Y9T_0TFBKdKfvAW91ngVCc6qTp5jd0VjGRcvzw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/xMw1QF63qWVExqc6PbSZskf3iLyu8Pj5dZKqCBHobLn42RDXQeWVBZqwyQdqs0M2wTEY34sA15y2IqjpqGcq_IdZrnxuJQOtKh4SLAyH-tvoR5lkt7dYJfIOkKXf6Q1fw4FCa8HrfwrQaQld9YrIFnzdlcTO9b8iL5YhrzwCvE-RZiXAHbp73ndDZQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
