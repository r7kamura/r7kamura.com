---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/Fa-8VmE_caY2XoWiyXUCQJKAUuXXJ5bEfSTEVS9um7-7-y9XGFZcBw9N7NiEJfE6oIZlK6_DoJD6zuvJALb1DKniKBCelM_h9In-_Wiyd8ofMNQfGKz4S2aWfx-p8S6qet9vyBVK3rld2nBxqkwniaPFV2bckQypUGYQdQrUxu56oAPy8AnMLvreDuop)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/bfA6iSZ-VxIrei8CHKlryaFAEp0XHVEWfSMRlRzC_eS8syFyBUFxPxTF9GX5DCg_9LAJ1b4cmtMfPqBSN6p4broMQzXoT1ArnrzcbOtFL1fh33IRKEcCt51Ik6ALrzvQVl-FEAfEVyQdWutrRdJ529Fnz4FSLFGHrvrYCLa3maFJozoSNTTr29CFCLp7)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/jBcROTQX8P6NVAA92WQZMwMtWEgUdx46Urn7jdwxtuzkMd7aAtflfFVWWmWJiECJScQ_tv7daKwNSM1ZpMutVEvwT_Mah1y9K7fNb31iZYJrKAKUq4WjvgRv8wIB1SnZ2uzQqhezkKZm9dX5LB4dJm7-9Rl_5pTnT6_8ZA4v6tt4I1dYaL06pvpKbsin)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/ShLGcC1ei0P2SX2AuCCT1XrbvNfpC6wzonvufw9IGJX3wbhR1CelUM3bV31sM773A8zAWUF_cHL_xtYZzfNVy5PrIAZqarFbJGuKHmAFETEtDSxQDXIfY70uCK7oaK6_g4R4hsgtiZxWA91rsewFLbpRqfRQFtLteT6RUcZhR1ZKhTd16TI5zVdoEd2I)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
