---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/3bQ0XOrcdZ8Ntp1fOCyc6lIpfGvJLBXLdP62wUhrH6FEFDS3w7DJXfSQ3weP8ye3W8ONDvWIUnlnjtJhIm5IH7MaBeRpa61TdZSCMjCHSMwuoGuGOsZ56YtnVEh96yZTQWpe2sXUIbWmt2RuPQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/3D1uEQf_Z-s4z7Lcj_f2xyECbhTp7rQQK6Q_tRDfIrknhqJXQLt58gVCPBZKDzHEmf-K2uSArdlgHH0Fjp3NXNczWI5wWcD7Sns073-PyzuYmMtFwMxgJX5Np0h88mCXJcPRVKQOWV89w8rFmQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/fqeFuPZbx5w-SDXyxVPe4YF8B66AFiC5JlnWqUS9ucGAC3kcrEyspUFFOOw9Ftxt9Yhj233AxRgBCNOr94ktFbo3knliJ-GT0WtYgTj-9NqoI5HTW9vIzcSuHeefF2n9u5atvxg599--xVQqNA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/i3PC_SKtCeNf4_2U3P-GCbTtvKZo8yTISIpQYnlSokUq8-94lhcswwaZBqSn2sD7m832OwPS8LTjA3gtrL_gd3ToPF2LLt-BVXrK4xDlC_PRbxVqI1x9_2pZdR6SA2RI-TAdgnyj0lkGhCQVbg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
