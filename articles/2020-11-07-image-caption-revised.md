---
title: 画像のキャプション title属性編
---

画像にキャプションを付ける方法をまた変えた。画像にキャプションを付け始めたのは2020年9月のことで、[当時も記事を書いた](/articles/2020-09-22-markdown-caption)。

![](https://i.imgur.com/LR7hssYh.jpg "今日の朝食")

以前までは、画像とテキストが並んだひとまとまりの段落があれば、つまりimg要素とテキストノードだけを含むp要素があれば、それをfigure要素に変換するということをしていた。

```
![](https://i.imgur.com/LR7hssYh.jpg)
今日の朝食
```

今回は、img要素のtitle属性を使うように変更した。

```
![](https://i.imgur.com/LR7hssYh.jpg "今日の朝食")
```

この用途でのtitle属性の利用には議論の余地があるかもしれないが、title属性はCommonMarkなどのMarkdown仕様にも含められているので、少なくとも変換過程で使うにはレバレッジが効きやすくて良さそうだ。
