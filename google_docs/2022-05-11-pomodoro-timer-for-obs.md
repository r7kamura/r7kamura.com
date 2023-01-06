---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/eoVO5Zy_h_YwNtHTn3uDKkDXLJ7LlzQ1P-QSIORMQna4GAFGK5KQghoEg-V1EJjB17zu6J-7n3zDEBS8tA8hkauVkK40C_9RYjjEGd386IyocL9idxu4ba5rDnKh-sg0462m6HMnV9QUvtXNZUcvbvL1hsIdFKESAx30UJxuRE70uMZtACNSoede32H1)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/VmzVqVH4q_15XHkhMQIA-1oNHSr53QLxUuEjV0bt5bDGOUYIjBUSZFEyWXiRJoOYPVNfyXGPUz08LbZ68p4EI_ttxWIGNRQAXFtOJ9a4rzZl7Z3m8XpbHmio-buUBpDoXfSNe_-9sTWlCUfMYVJfai94mxgoeZNR4CyglQYJvJ1JOfFVnGFRTEsckq3x)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/x_gOznQLDfFQEvU_ohTSxqOv-O6XFRgGpBzsPl7i3jB8vGsJP-C2OuZbw23Ftph-YZ80dDEDwRq0QMvI22h2aEBqvYIEJ3FMghSx78TjHkhQCrBLZjghW2hQ72K0kuOZnXyFgy9RT1B2h-1vYH8spJMN1hpv62FVBV0E-_T9cAtccZPghISDvnqTCPr-)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/hzT_71Djf-aMleHFqMkfPNOJwXgWRc7QsyQ-3gbhzVAcDWhZ5V3-3tcvijGzwpQp8ElF67ah_uUtCRBbWScpPWeq9_I_eaEc7KKtN0vhBKyMVJFonUM-M_wEM5VOKoNykLWPEPO878HtwwBv6xxbgkwIzx_ctw76FmgGig0ErYYcRnvi-QFC4B2YelNH)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
