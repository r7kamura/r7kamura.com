---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/3xi8G3eSYp3Z9mFFns-1W4n8NqTDzxWmwq6r10AOD7zJb6GynwnmHVZg9p6MsrK2VYsu_OUT5LVbcsVU39KOXZhXxALYyi8KDMwSO-wRC0oq5jZem3RQAfaIPWElcq0Gl6-kugrNbHqzRwO9PAh8Vg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/UpwlMmVfZL9qb3Mm--evK3yxgW0-1Qf_KIY620BaCTuceMsCS-VIvmastrGs3GV705pRJhy1W9W2JJZAxhfYBbgyiyn-gkid5hMEA04ZNx-JrR_lIpTRdq8Em542p2o4eUt7G9i4jyrx0HF_0Uol6w)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/eOAqZfMvioZC3ly2WVizi0-SOrgHsdLMOvfS5PJgXx-Rdpw2cjK1ohO8z63hPkh-4NslwUYAQhzHIP91RlKXulipaviovw6k9Dx9yt5u6zMIlOEcGQXPFqvL-I_xzvgV0hrhFFaBtsPbf6e_nJBI8A)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/2BL4fDjD6PvLtlRVHk8P6Fc3611n6HcHVBpjCHdH2EDCISNws6XEl0Nq9mjRIZAf6puiK8NDZSh9nG1BzlPFWokDMoL-aidT0n3eIbIrkT5xJC2k4fCD9R8weK3JBNm1OWAzJdK9CPTU3L56FgKYuA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
