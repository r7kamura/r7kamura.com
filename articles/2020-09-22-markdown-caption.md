---
title: Markdownと画像のキャプション
---

FF14のスクリーンショットを久しぶりに見返していた。

![](/images/2020-09-22-markdown-caption-back.png)
猫耳や尻尾があるミコッテという種族

![](/images/2020-09-22-markdown-caption-monster.png)
山岳エリアに居るサボテンの敵

![](/images/2020-09-22-markdown-caption-whale.png)
移動するときによく乗るクジラ

![](/images/2020-09-22-markdown-caption-boss.png)
めちゃくちゃ大きいボスから味方を守っている

![](/images/2020-09-22-markdown-caption-namazuo.png)
人語を話す変な生きもの

![](/images/2020-09-22-markdown-caption-myroom.png)
ギルドハウス内につくった自室

![](/images/2020-09-22-markdown-caption-myroom-2.png)
疲れて縁側で寝ている

---

この記事を書くにあたり、ソースをMarkdownで書きながらも画像にキャプションを付けられるようにしてみた。画像とテキストだけで構成される段落を見つけたら、テキストをその画像のキャプションとする――という作戦。

次のような過程で変換されていく。

```
吾輩は猫である。名前はまだ無い。

![](/images/cat.jpg)
無名の猫

どこで生まれたかとんと見当がつかぬ。
```

```
<p>吾輩は猫である。名前はまだ無い。</p>

<p>
  <a href="/images/cat.png" target="_blank">
    <img src="/images/cat.png" alt="">
  </a>
  無名の猫
</p>

<p>どこで生まれたかとんと見当がつかぬ。</p>
```

```
<p>吾輩は猫である。名前はまだ無い。</p>

<figure>
  <a href="/images/cat.png" target="_blank">
    <img src="/images/cat.png" alt="">
  </a>
  <figcaption>無名の猫</figcaption>
</figure>

<p>どこで生まれたかとんと見当がつかぬ。</p>
```
