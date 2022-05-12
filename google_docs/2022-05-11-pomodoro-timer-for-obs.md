---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/pf4u2ogsK_kcTN6ixpLg7KVZsvKMRKGh1N0kBRlSiff6MYyzW52LtAGycegSSH70AbtXZcgezyjIWUVynlASL5xE0GuRFhZd_sogjd4u3K25W00gtLedc4T6kinxmQhoFZKKywU5GgxnqsTQVQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/jzikQ3edusZdr-xBUTyvD_Lmu-4GBKhopw7OXOayPZ81ctBm2sdkA-IMusIMmS5hTR_si_i30Zms_caNFjbwvMNU4vZ8gR7lpb16shgcmJre-KNcA8GPJ3UPONtzLaAq2-IzUmpNgEQ1gW365Q)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/Jv3OLf3BMWLk5gbPO9eri4nbXJ60PxUlmgBZYmPkeuNjroZqEP1riwWguc5XmS2lZnLhhCIub6s65LMCuA5TxMs_astHII54X6vJ_I1kRfz-pK2BXRgtAS1A_Lvol1c2ZrAgV4zr_Oo11I37-g)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/ff2jH_p_C6qZTl3LJTnpVkTZcE3JAZu8BSBM29LlU2sa5FQQVWlVrxrE-4GHBUQN9mp2J9iFBj7u6VBVZyuEjarWcnH7EnW3_-RV6nCHMvDDfWqJMC-4OqwdrXLjR4PRkNIFjR2kj6r2ggE-QQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
