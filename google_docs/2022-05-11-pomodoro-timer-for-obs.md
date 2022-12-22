---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/jMXJnHnwi9X7yIVtii6-0vUT7JOtjJnrDThn7jDc9g352yQm9LUc-4iVdg1DbTkMp3pBUndhzCNqaZ3h2TKaJIDLNzP55S-8xadBhvZk0DYug9a-rN-AFkiJ_uX5P2PQfS8TgG4VBz9vm9KXmz4AjG3JA6nuZFE-LBnS9lC_Xd8NmsARP_Ea1eNsip3M)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/-NuP9jEAb4_oTdh8uZz4GnfE-vZ9uh-uf7e5VKTeicrQF8k3Qsk5we9rdDSKhu31z3y9WyUNWPfJ-M4hnMuGin0HjqG-NH8HRTXgonC_jhkJjmljuoTbNcmawREFoHenI2RYixIXtFI3P9qTg3K42CJmYRolt6GQYi5NVH4yFjBbbGg67nKSqjvE9VzP)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/5vzcxzANlhkPYt4jHkvVriI8HMcjdYvwqqos_h8jFPerxDiJfQVfwIFf4HjdzlYrT8gAm_fLnLEyGySxureHshNNsxXwn3i77rn89oVhW4LgUq2hZp3kNoUkqFw4OHVAoqCnoQkmTK2ipl-QreD26s4UvftBqqE6gJh6MVgOZ55KFd7wfEe4hXmGqcE9)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/13mSd_8Ebs5P7OduVHeGWLO1P_0qic5-pw3yKr0aWHOaaWQCON53d6vFYstHJj58W2YQqX6tjUbqoVwFx6wJV1MmPWD11AKmtN2u7UIlTi52gS_KdgdwpLZQZgU6AcgVGqy2p01SCgIqZKdiSkO1rvUH28qqBzUdzrRSFEaMcrY74cBh7UGcHa_9YwHN)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
