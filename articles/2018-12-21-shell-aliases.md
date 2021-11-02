---
title: 2018年によく利用したalias
---

シェルの alias で登録しているコマンドの中で、2018年によく利用したものを振り返っておきます。

```
alias pr='hub browse -- pull/$(git rev-parse --abbrev-ref HEAD)'
```

この alias は、例えば r7kamura/foo リポジトリの bar ブランチで作業しているときに、<https://github.com/r7kamura/foo/pull/bar> をデフォルトの Web ブラウザで開く、というものです。この URL は、foo という名前のリモートブランチからそのリポジトリに Pull Request がつくられているときは Pull Request のページを開き、まだつくられていなければ Pull Request 作成画面を開く、という振る舞いをします。これから Pull Request をつくるときと、作業中の Pull Request のページを開くときに使っています。5年ぐらい利用していますが、今年もこれが一番役に立っている気がします。

但し、fork したブランチで作業しているときは fork 先のリポジトリの URL を開いてしまうので、これから Pull Request をつくるときは良いんですが、作業中の Pull Request を開きたいときは compare ページに飛ばされてしまうという若干の使いづらさがあります。compare ページには既にそのブランチからつくられている Pull Request へのリンクが表示されているので、それをクリックすると良いんですが、少し手間がかかるので若干面倒ですね。hub browse コマンドではどのリポジトリを開くかを指定することもできるので、fork 元のリポジトリを計算するコマンドがあれば、それを利用して改善することができるかもしれません。

ここ数年間 GitHub Enterprise を利用していないため、GitHub のことだけ考慮してコマンドを用意すれば良いので管理が随分楽になりました。

```
alias f='ghq get -p $@'
```

これは ghq を利用して GitHub のリポジトリを clone してくるためのショートカットです。-p は clone してくるときの URL の形式として SSH 形式を利用するものです。

```
alias e='cd $(ghq root)/$(ghq list | peco)'
```

これは ghq で clone してきたリポジトリに移動するためのショートカットです。peco で絞り込んでいます。

```
alias xl='tmux list-session'
alias xa='tmux a -t'
alias xn='tmux new -s'
```

この辺りは tumx を使うためのショートカットです。xl は存在しているセッション一覧、xa はセッションへのアタッチ（セッション名の先頭部分数文字を引数として指定します）、xn はセッションの作成（セッション名を引数として指定します）に使っています。

## その他

あとは他愛もない1文字や2文字のショートカットや、操作対象を peco で絞り込んでから実後するもの、Git の操作を少し楽にするための alias などをよく利用しました。他に、これは alias ではなく function として実装していますが、git grep と sed と xargs で指定した文字列を特定の文字列に書き換える function が今年は重宝しました。

alias と関係ないものの話で言うと、GitHub の Pull Request 周りの URL は便利で、例えば複数件の Pull Request で並行して作業しているときに、<https://github.com/foo/bar/pulls/r7kamura> を開くと is:open is:pr author:r7kamura で foo/bar を検索した結果が出てくるのでよく見ています。

## 振り返り

今年も新しい alias の追加は無くて、使っていないものを消す一方でした。数年前までは便利なものをどんどん取り入れていましたが、最近はそういう傾向が自分の中で徐々に減ってきて、どちらかというとストリクトにコマンドを入力していこうという気持ちになりつつあります。あとは Docker を利用するプロジェクトが増えたため、ホスト OS 上で直接何かを処理するコマンドを利用できる機会が減ってきていることも、alias の減少傾向に関係している気もしています。
