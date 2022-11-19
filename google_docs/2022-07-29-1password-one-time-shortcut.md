---
title: 1Password 8 for Windowsでワンタイムパスワードをコピーするショートカットキーが動かない件
---
なろう小説みたいなタイトルになってしまった。

最初に回避策を書いておくと、Quick Access (Windowsだとデフォルトで Ctrl + Shift + Space) からであれば上手く動くので、これを使っていきましょう。

* * *

Windows 10で1Password 8.8.0を使い始めたところ、選択対象のワンタイムパスワードをコピーするショートカットキーである Ctrl + Alt + C が動作しなかった。クリックでの実行や、他のショートカットキーは正しく動作することを確かめた。

![](https://lh5.googleusercontent.com/zqQ7jYX19aE8WXQB3v8FjzW6slw0Hml6dK3eb_A47EmcXHxfHwYM2PDm8NRh3XK_6ZVuH_oM6-DC3WrhyBrBUVG3ya8ItTIAVAdIx08_eybOVVsSIIkEP5WpiVyiVWAku449palw1ty8P5RpcMDoVIHqaiG-dlzVyhgvpoZ3bDYvhHLGq5rTRFE0xLOm4g "これ")

以前のバージョンに戻すという解決策も考えたが、このバージョンの1Passwordはきびきび動いて使いやすく、UIも以前より洗練されていて使い心地が良く、あまり古いバージョンに戻りたくない。

少し調べると、不具合報告や質問などを行える1Password Support Communityというのが用意されていた。流石だ。そこで、このコミュニティに登録し、同じ問題を報告している人が既に居ないか念のため調べた上で、[Copy one-time password shortcut doesn't work on 1Password 8? — 1Password Support Community](https://1password.community/discussion/comment/649927) という質問兼報告用の投稿を作成してみた。

好みの話をする。こういうオープンなフォーラムに投稿するのは、サポートに直接メッセージを送るのと比べるとかなり緊張する。自分の英語が正しく伝わっているのかどうかとか、態度が悪くないかとか、完全に勘違いしていてお前の環境だけで起こっている問題ではないのか、とか。しかし将来この投稿に検索で辿り着いて助かる人がいるかもしれないし、オープンな場ということでサポートの方もしっかりした姿勢で対応してくれるだろうから、こういった報告方法のほうが自分は好みだ。

![](https://lh4.googleusercontent.com/_Jzq_p440P8G-i5B4T4bLXnqGx0Um19bSddXG5mkNJUtmBmiWCTBkqCr02o1qlDWQTiG-waSg1hn-jsINRsK-wW8CSuxOX2d9qzo_Yiwl464sGVE51lRuFmv441Xvm__6CmuYuRwmr1QfYj6QN1x5fqAXIHixem69a6dpJFPDpG0aPvCatFzp1AAqfTe1Q "Quick Accessの様子")

1Password 8には、Quick Accessという機能があるらしい。コマンドパレットみたいなUIを呼び出せるやつだ。後日上の投稿に返信があり、こういう機能があってこっちだと多分動くからと教えてもらい、そしてQuick Accessだとワンタイムパスワード用のショートカットキーも上手く動いていた。しばらくQuick Accessを回避策として使っていこうと思う。

早く直るといいね。
