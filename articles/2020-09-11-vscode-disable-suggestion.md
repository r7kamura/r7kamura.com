---
title: VSCodeで自動で補完候補を出すのを無効化した
---

VSCodeで文字を入力している最中に「もしかしてこれじゃない？」って補完候補をポップアップしてくれるやつがすごく鬱陶しいので、無効化した。

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

検索すればすぐ出てくるけど、settings.json に上のような設定を追加しただけ。ちなみに能動的に補完候補を表示するには、Mac版だとデフォルトでは `Ctrl + Space` で出せる。

思えば前にAtomを利用していたときも無効化したし、その前のVimを使っていたときも無効化した気がする。

---

そういえば、このサイトの記録を辿る限りでは、2020年3月にAtomからVSCodeに移行したらしい。移行してから半年が経ったことになる。Vimモードからの脱却も同時にやったので、離脱症状が出るかと思いきや、意外と難なく乗り切れて本当に良かったと思う。
