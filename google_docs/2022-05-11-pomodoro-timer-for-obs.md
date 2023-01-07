---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/X-ayUanaW3_p_Fm9w8BuYS_98YNMNK-VC7xMRMK-PLD6rfHH7nHeF-1lFvgnSf_C7z-KID-qai0-1f1z7b0wdXnmTOgQCPGynjmN9HQz_iJHNCs7G_0Njsg2U7nlSN_joCoCIvana9wvz7WTbxwRXZVKU6TycH1MO7Wm56H5XyC5wVVxVuVmQwXLAm_6)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/pvf9q5JAJQ7HUIM8frrV3mdXKIetebn_ALN8HsccLoON9WgMn6z0InOVPODgBGWK8unmLotCtnvUglw6KPTW_U6F6d7AEdEnT3yao_gaKcDIBWQrTggVSVeIMc48XE-mhvtOqPpwFaoHJR6PM3EmouLnxdpgI1Xz9gmlU8PbRNd2-mgSWSKoV2NxDtgF)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/MzEvsw-gLaSUDDUF-faB3kO4EFrbIxk4zuCddpZ6UwytrZkBg3TAQW0n1FuiOxP-zKUJ4pfkKgCAlcglIrM3-r8k2ZJidc9lKLorFYKn0LaiuUNhWAm7wN8DtW3q-lwxoYmaTCaX3ieCiQroQC4f_u3v5Rho7McHFj_hYCmFBvBfvo5TLNIZsTgue5FG)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/G-F4V9qYESSY3i6FO9pbZ3JdXGI2Mg02-3kxfGJnZ8VartjyaCdFvvlz1t3S-GisU9MpsKi2KnHAQfPiC0Sso7zVNnm3K7WgfCPoFto78HuufGoYX0KzjrwKqJlsUitsblgPbwLxkJ1N5T6DRG_KZ6nkFScPgezhK6zqwAly2S2BlEJUCvUh_7puTzJH)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
