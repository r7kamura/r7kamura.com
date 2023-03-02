---
title: 1Password 8 for Windowsでワンタイムパスワードをコピーするショートカットキーが動かない件
---
なろう小説みたいなタイトルになってしまった。

最初に回避策を書いておくと、Quick Access (Windowsだとデフォルトで Ctrl + Shift + Space) からであれば上手く動くので、これを使っていきましょう。

* * *

Windows 10で1Password 8.8.0を使い始めたところ、選択対象のワンタイムパスワードをコピーするショートカットキーである Ctrl + Alt + C が動作しなかった。クリックでの実行や、他のショートカットキーは正しく動作することを確かめた。

![](https://lh5.googleusercontent.com/A6-bOyjMpDeQhQHVOlcbKo89FF9kLtGga9cNkaoFsOt3ky3vyw--aDUJI4YV5IGvTMKL5nCMoNwn1SmP9YvZie0D4S3jI-QZTxp9pJ3mXgyzldQ5FKuPx4h1JOB_b7mQhO_ZfWI9ritZkSMaaCKKxak "これ")

以前のバージョンに戻すという解決策も考えたが、このバージョンの1Passwordはきびきび動いて使いやすく、UIも以前より洗練されていて使い心地が良く、あまり古いバージョンに戻りたくない。

少し調べると、不具合報告や質問などを行える1Password Support Communityというのが用意されていた。流石だ。そこで、このコミュニティに登録し、同じ問題を報告している人が既に居ないか念のため調べた上で、[Copy one-time password shortcut doesn't work on 1Password 8? — 1Password Support Community](https://1password.community/discussion/comment/649927) という質問兼報告用の投稿を作成してみた。

好みの話をする。こういうオープンなフォーラムに投稿するのは、サポートに直接メッセージを送るのと比べるとかなり緊張する。自分の英語が正しく伝わっているのかどうかとか、態度が悪くないかとか、完全に勘違いしていてお前の環境だけで起こっている問題ではないのか、とか。しかし将来この投稿に検索で辿り着いて助かる人がいるかもしれないし、オープンな場ということでサポートの方もしっかりした姿勢で対応してくれるだろうから、こういった報告方法のほうが自分は好みだ。

![](https://lh5.googleusercontent.com/UAH-pA81arTXh9IqPc7Mn28m9Vu0jY0jpjZgBA6V9kBTwLf1B3x8mx5naAvR7obTGkEz8bcqVNMsXiFzq49pvN3EW5o7O5xuuLVYDsu5LsHu87TBENAGwQynRVYqRsZwFndEl4tcQeZFPbp_JG22QLk "Quick Accessの様子")

1Password 8には、Quick Accessという機能があるらしい。コマンドパレットみたいなUIを呼び出せるやつだ。後日上の投稿に返信があり、こういう機能があってこっちだと多分動くからと教えてもらい、そしてQuick Accessだとワンタイムパスワード用のショートカットキーも上手く動いていた。しばらくQuick Accessを回避策として使っていこうと思う。

早く直るといいね。
