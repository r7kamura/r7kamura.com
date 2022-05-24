---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/S4rpqC2wQd2OM7Amm9LJkFUDe_ObwYivMkwx8vpLuAf5OefVp64Oa5oQpPDM4g_t97H9352TDyipwoP3T5NjqjmbvJry4BRp59xVyMbCY9RowbfOI_8YT0unBlhXOiq_-GbSxgI_n3uV0GUnLg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/VygB_5QPfSAmSKNmoXyzyhK4oKJSBFHjOPVwkNx-WsK8slBQ0k0UfGp_0aI2ii_ks-aiu7gUtmDF8dpVtZhMu_iIWqXI6JEJ7267WQ0CB2wKliAVPxyTIAlyPk4TtYEL_ZP91Sua3ictQmUeEg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/jtZUQ9HBXZaYhY-42xgenY8eOiaqx5da6A_LhrxYtHxt8rQQ4ZOvZil-nJJrTgmw2Lp0YHk9WjL11G-GTjQBvW08-_CayPqRFMc3XKrOZMXngeWxZxKuH_Yr1AbhROsB7R6UQy0tMei2ysjUPw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/paAn1_MMJzgpE4EH_j4m7rTBIJg9ACeH6DhB3mIQAF9Dv8wnUf6Nouv3h3CUmbECfQWj8I_5FqM7DCLtvs6Sidpp5lGieCcz94OCHewsj5qfYRv3e0HglJhd-OqbvXrw17b67AHUb-dj55uoCw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
