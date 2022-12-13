---
title: 作業配信環境2022-05-07
---
[最近YouTubeで作業配信をしていて](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)、ルールづくりや配信ソフトの設定なども含めた配信環境が徐々に改善されてきたので、現状の様子を書き出しておく。似たことをやりたい人の参考になればと思う。

ポモドーロ
-----

持続可能な作業配信にするために、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)を取り入れ、50分の作業時間と10分の休憩時間を繰り返すことにしている。色々試してみたところ、自分はこの間隔が上手く回るようだった。個人差が大きいと思うので、色々試してみることが大事。

作業時間中は潔くマイクミュートにして、休憩時間にコメントを拾い上げて雑談している。

タイマー表示
------

![](https://lh4.googleusercontent.com/n7BSVzG0oR60T14b7SHDiz6ZxJCB5q4-jdMMARE-KjjG_0c30M_WV-AYHKpnfOLVUVZkApNawUybQbLp1ZVtov5BsqIBCo9OfvdfNN8Nyg0P6cGodpWELxy4JNFekzreCgI5e5pXGda5fa1-qnHwLPudO75qpij2jlabYsaTCuWHI279AbSV9R8Mf9lH "OBSの様子")

配信用のソフトとして、[OBS](https://obsproject.com/)を利用している。OBSには画面上に任意のテキストボックスを表示する機能の他、テキストボックスにタイマーを表示するスクリプトが付属しているので、これを利用していまの状態と残り時間を右下に表示している。

このタイマーは、そのテキストボックスが画面上に表示されると自動的に始まるように出来ている。作業シーンと休憩シーンを用意して、それぞれのシーンに別々のテキストボックスを用意し、別々のタイマースクリプトを設定し (標準だと1個しか設定できないのでスクリプトファイルをコピーして2個目を用意する)、シーンを切り替えることで自動的にタイマーが切り替わるようにしている。

シーンの自動切替
--------

[Advanced Scene Switcher](https://obsproject.com/forum/resources/advanced-scene-switcher.395/)というOBSのプラグインを導入して、「作業シーンが50分表示されたら休憩シーンに切り替える」という設定をしている。

ほっとくと休憩しないまま作業を続けて息絶えてしまいがちなので、強制的に休憩させるのは本当に大事で、ここが自動化できるのは嬉しい。今のところ、自動的に作業シーンに入るという設定はしていない。自分の意志で作業を始めたという気持ちを育てたいため。

音楽
--

雨が好きなので、作業配信中は常に雨.mp3を流している。

休憩中は、適当に当たり障りのないBGMを流している。休憩シーンにBGMを設定してあるので、前述の設定によりシーンが切り替わると自動的にBGMが流れ始め、休憩時間が始まったことが分かる。これは心理的にかなり効く。また、アーカイブ動画から頭出しをしたいときにも役立つ。

lo-fi的なBGMが好きなので、著作権フリーでおすすめのBGMセットがあればぜひ知りたいと思っている。YouTube Audio Libraryという大量の楽曲を利用できるサービスがあるが、これは楽曲が無限にありすぎるため、どれが良いか一切分からず立ち尽くしてしまった。

カメラ
---

![](https://lh3.googleusercontent.com/gq2PsHFC76LdpTZ4b_aC27GwJVZFf1sXeCn9yVep2GQVhhwFxXDiO8PxtRcdniXLlEQUyGT7W7lsBqhPmae86aXP9UYxA5P6wnFKTjU3CXhb66meti4pBWfr2KL_-TGw3nl4IVdHtJsP0cm4v45i_RyAnvQeyOVWwfZanICo69OGVsWJI30b_egEtbnf)

会議用にロジクールの[C980GR](https://www.amazon.co.jp/dp/B086R71LGW)というウェブカメラを持っていたので、これを配信でも使っている。三脚を持っていなかったので設置に少し工夫していて、この話については[ウェブカメラを支える技術](https://r7kamura.com/articles/2022-05-04-super-crab-clamp)という記事にまとめてある。

OBSの知識を付けたら色々と自動化が進み、特に手動で操作しなくても配信できるようになってきたので、持て余している古いMacBook Proを配信専用機にしても良いなと思っている。正直なところ、MacBook Pro内蔵のインカメラとマイクだけで配信しても全く問題無いし、そういう再現可能でミニマルな構成に寄せたい気持ちが少しある。
