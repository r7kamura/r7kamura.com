---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/edW2HO_11d5efKJrAjX-JRmTH0DdQTWiHAoxKvS5JTCqapPhjFi5XGzrpdNxBjnSh0tthvc7nqQo9MTJrMZQzllS4JjMyFp5478ygAOjjZnJRg4B9pig0xUDHUuEdBJMDwrEFW5yRkKt8en7zTaEYKK4Xnid7Dq3gPGwJc7bhwcQ86KbaOnfykOq)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/SZezEcOuz7oJwlkujS8SBkEIAYqt2IOGU2Q-yCFV2KzvzwbWLMkXj3fuRNzOjxCsJaNbJ57QkYsDCbF5WYRF2Xh_nyMz2bXtjDRSbnvMA7qBNz_4pAQHcXX0wxReeH2oC7T8DZe9mXc1Jl54V3fYpbxOJenBmTuWMUVquIPfNUBylRi7C-OBGCKD)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/WnmhQhO21xWbO_J2fLc0QtxpAFbpfLAMJJB8goJYI06AuPzjxfTkgEGH5PfIcfklDSB_3alVfHtOWGJm29U4EBPDJe3ZPYVQ1nQ-rCKWiZ1u2KJI_wycjCheWLt7VRe5NRSXbILUeowUR5892v1IsfgCrvhKv9fgAbEGGvmPVXGsXDU4NHZMZl-G)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/tldPb2U1zBbpAUTEHa7sCBcP8YqC5u_KgFQ64p1vsr42WoIzPm5ubdxQD-XmMMFltHy3fGKCMh4RMmTVXS9gUd2o43zpaed7Jv1KVDVb4DDi1yuY-wO2eNVJg08dOvoFwmLlBQDN0DfFOB-7Ks05WjgvWrDVkZ79fUBFvLktAyd08ycky_5Pz_qS)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
