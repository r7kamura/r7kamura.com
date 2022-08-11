---
title: 1Password 8 for Windowsでワンタイムパスワードをコピーするショートカットキーが動かない件
---
なろう小説みたいなタイトルになってしまった。

最初に回避策を書いておくと、Quick Access (Windowsだとデフォルトで Ctrl + Shift + Space) からであれば上手く動くので、これを使っていきましょう。

* * *

Windows 10で1Password 8.8.0を使い始めたところ、選択対象のワンタイムパスワードをコピーするショートカットキーである Ctrl + Alt + C が動作しなかった。クリックでの実行や、他のショートカットキーは正しく動作することを確かめた。

![](https://lh4.googleusercontent.com/6LeZDS-6eZcUyD1Uj9_GrSSaGPNfO0dlffdzBl5dPloNny5H3UQH5n3buJfdJMlo-KkJZbGzld5-O5N2uTtsFZDp3q1EOi_XnBNn-XA_cYILIE_Myt28x_NRzBpzjugADvsRNE5OT70MskEvXIV37nM "これ")

以前のバージョンに戻すという解決策も考えたが、このバージョンの1Passwordはきびきび動いて使いやすく、UIも以前より洗練されていて使い心地が良く、あまり古いバージョンに戻りたくない。

少し調べると、不具合報告や質問などを行える1Password Support Communityというのが用意されていた。流石だ。そこで、このコミュニティに登録し、同じ問題を報告している人が既に居ないか念のため調べた上で、[Copy one-time password shortcut doesn't work on 1Password 8? — 1Password Support Community](https://1password.community/discussion/comment/649927) という質問兼報告用の投稿を作成してみた。

好みの話をする。こういうオープンなフォーラムに投稿するのは、サポートに直接メッセージを送るのと比べるとかなり緊張する。自分の英語が正しく伝わっているのかどうかとか、態度が悪くないかとか、完全に勘違いしていてお前の環境だけで起こっている問題ではないのか、とか。しかし将来この投稿に検索で辿り着いて助かる人がいるかもしれないし、オープンな場ということでサポートの方もしっかりした姿勢で対応してくれるだろうから、こういった報告方法のほうが自分は好みだ。

![](https://lh3.googleusercontent.com/SKPq_38cstpHqOI4RtqzZ80_YSrBGehm92yCoYGNmT8QshQnYSbfbDMVmKXPL2DJiI9JwfVQTYF1mRlJIZF8v7YEToXVkTPVGjpkcaJdWVDScSeV5wlk1Jg7hdim8wCYHZUCFZAFrmv1I-crM_rj5dQ "Quick Accessの様子")

1Password 8には、Quick Accessという機能があるらしい。コマンドパレットみたいなUIを呼び出せるやつだ。後日上の投稿に返信があり、こういう機能があってこっちだと多分動くからと教えてもらい、そしてQuick Accessだとワンタイムパスワード用のショートカットキーも上手く動いていた。しばらくQuick Accessを回避策として使っていこうと思う。

早く直るといいね。
