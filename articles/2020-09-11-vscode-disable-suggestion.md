---
title: VSCodeの補完候補
---

VSCodeが自動で補完候補を出すのを無効化した。

```json
{
  "editor.suggestOnTriggerCharacters": false,
  "editor.quickSuggestions": {
    "other": false,
    "comments": false,
    "strings": false
  }
}
```

無効化の方法は検索すればすぐ出てくる。settings.jsonに上のような設定を追加しただけ。ちなみに、能動的に補完候補を表示するには、Mac版だとデフォルトでは `Ctrl + Space` で出せる。

思えば前にAtomを利用していたときも無効化したし、その前のVimを使っていたときも無効化した気がする。

---

そういえば、このサイトの記録を辿る限りでは、2020年3月にAtomからVSCodeに移行したらしい。移行してから半年が経ったことになる。Vimモードからの脱却も同時にやったので、離脱症状が出るかと思いきや、意外と難なく乗り切れて本当に良かったと思う。
