---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/og5dLLarxyrYHTjzPCxuVm7OWkq_L11Fd3WsHI0JKOY5BBs_sasW-gca8kuRbN-OEmx9H7FGJ00EcT7DZ14iAnO2RaPk0KnOHCupdc1MtCJk72-omtQBfu1n-D7rxrGAjSzpDjXpP5w_yzrtoOtmUw)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/WaRG5T1T28p8ze1mU_9uEm5Yy_RxCpBo35kv8Pl2RSfPPnhE37VGIhrzSNdePfmymesUtw56VCx2vgTWyBIKDTS8AZkp7mojzhrXAQC_ZFgWxtbNy3aGwDv1GDaMYCJUzLr2dHz-mFzbX4Za3PR29g)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/LbF0-tlfKVibTPoqNgcP-j41IW3EQvnaEkItAunpHwsgkEqNw4Hs9JoiDtHv72AhNKWp4P0i8GUxMMNc0cLMeOtizPHJGIRP2BDjjLtW684Zl_O3CDi78gBjlV6Uh3l0YZyd_eMISV37q6jdqI4tig)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/AF43huZYCh83nSqpMJ7h_I83jxTnbkt0q_77uP3PzlGtCebsYRy-PkEEPFesgI4yFw8bCZI0Y4JHr0ZACfRAfOj0POkM7y4ufLqp2pk4X0_xmw2fvNLXoAEU6_C20Zex1BQZRwYgTwrBB1yTjVSaBQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
