---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/PZk4PUg1F6z0EjVRnEo9WovmiFAU_9yuLmybEgU3ilWP58na8G-o-Gr5fJjgqBzGtSxTF20OEs8blMkk_e2nm55CsXzX46diKSe7cV653yY2v8QlGMTkElw-6R9fAyuAlY1ukNDDs0R9d2IgaQCiUg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/CyEvZda1kEcuDFAPLNUf4rQP1xIdJTwf9X13cnaRnpiSTk11yDQbQX1Bdz5GSop_sMNDjuhLz8cK4oQJ_AkE2XvF6h-e3mmJWZ46a0XVv-ZrJm1eTk4Sv4X8xRdZDuiyMn_l_231FA6pM0e15aL7fA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/N_nxWvKHma_jML2HbFzC_i8vvDMsuOUtJJJMGfYsdvoq4lNgNxEJg7oAFyGQMuTuTrQ61ELFX34SZMgghANSwu5vCkyoHrg5iNoXrk5prY1ljV5oJJLenMLGIrs5gL1ku_DNBVmIpr3CX4VbIfuOFA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/jAqHW_Rp105jvDbHu-Sa2E6VN6hbfaNc3pi9-t_wXAeNBCefZwC0MRbP4t52raWPmWL3vUpCFCges7JHL5iAewDvU_poB4Si3-ARrWh4mAAZ0kbO3bXUX7n_2GB7u8cUix98iGUz_C1UsMCW8e1mQA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
