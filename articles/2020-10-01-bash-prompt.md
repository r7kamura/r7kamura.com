---
title: Bashのプロンプトと非印刷文字の幅計算
---

Bashでプロンプトをカスタマイズしようとしてはまったが解決した。

## Bashのプロンプトで使える制御文字

Bashでプロンプトを指定する際には、[Bashのマニュアルのプロンプト制御の項目](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Controlling-the-Prompt)にも記載されているように、幾つかの制御文字が利用できるようになっている。この中で、例えばANSIエスケープシーケンスのような非印刷文字をプロンプトで利用するとき、プロンプトの幅を正しく計算させるために、`\[` と `\]` という制御文字が提供されている。

> `\[`
> Begin a sequence of non-printing characters. This could be used to embed a terminal control sequence into the prompt.
>
> `\]`
> End a sequence of non-printing characters.

このように `\[` と `\]` で非印刷文字を囲ってあげることで、プロンプトを扱うBashが上手く幅を計算してくれるようになる。逆にこれをやらないと、例えば端末での折返し時や、カーソル位置を動かすような処理（例えばコマンド履歴のインクリメンタル検索など）で表示が崩れてしまうことになる。

```
export PS1='\[\033[01;33m$\033[00m\] '
```

## 関数内での制御文字の利用

さて、ここで実装を分かりやすくするために処理を関数にまとめようとしたところ、`\[` と `\]` が制御文字として扱われてくれないというところで困った。関数の中で同じように文字列を出力しようとすると、`\[$\] ` のような見た目のプロンプトになってしまう。

```
prompt() {
  echo -e '\[\033[01;33m$\033[00m\] '
}

export PS1='$(prompt)'
```

解決策としては、[同様の問題へのStackOverflowでの回答](https://stackoverflow.com/questions/24839271/bash-ps1-line-wrap-issue-with-non-printing-characters-from-an-external-command)を参考に、`\[` と `\]` の代わりに `\001` と `\002` を使うことで解決した。ちなみに、同回答で提案されていた `PROMPT_COMMAND` を使う方法でも同様に解決することは確認できたが、前者の解決策の方が分かりやすそうだったのでこちらを使うことに。

```
prompt() {
  echo -e '\001\033[01;33m$\033[00m\002 '
}

export PS1='$(prompt)'
```

---

何が原因かよくわからない状態でとりあえず表示が崩れて困っている旨をTwitterに投稿したところ、丁寧に教えてくれたhirose31さんに感謝。

