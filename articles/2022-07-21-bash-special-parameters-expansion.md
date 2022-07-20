---
title: Bashの$@の変数展開
---

Bashで、"$@" のように二重引用符の中でこの特殊なパラメーターを展開すると、普通の変数展開とは異なり、word-splittingが有効な状況においては、実際には中身がwordごとに "$1" "$2" "$3" というように分かれて展開されるらしい。

[Bash Reference Manual](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html)の二重引用符周りの説明で、こうある。

> The special parameters ‘*’ and ‘@’ have special meaning when in double quotes (see Shell Parameter Expansion).

同マニュアル内の特殊なパラメーター周りの説明で、`$@` についての項目の中に、こうある。

> When the expansion occurs within double quotes, and word splitting is performed, each parameter expands to a separate word. That is, "$@" is equivalent to "$1" "$2" ….

今日レビューをしていて `"$@"` という変数展開が使われていて気になったので質問してみたところ、この説明の存在を教えてもらった。
