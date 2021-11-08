---
title: 画像のキャプション テキストノード編
---

FF14のスクリーンショットを久しぶりに見返していた。

![](https://i.imgur.com/Kxy4bi4h.png "猫耳や尻尾があるミコッテという種族")

![](https://i.imgur.com/jlaz7Tuh.png "山岳エリアに居るサボテンの敵")

![](https://i.imgur.com/J3cCVZCh.png "移動するときによく乗るクジラ")

![](https://i.imgur.com/Fiy7Ibgh.png "めちゃくちゃ大きいボスから味方を守っている")

![](https://i.imgur.com/nIKD58oh.png "人語を話す変な生きもの")

![](https://i.imgur.com/N8oHqbYh.png "ギルドハウス内につくった自室")

![](https://i.imgur.com/HNfi6RSh.png "疲れて縁側で寝ている")

---

この記事を書くにあたり、ソースをMarkdownで書きながらも画像にキャプションを付けられるようにしてみた。画像とテキストだけで構成される段落を見つけたら、テキストをその画像のキャプションとする――という作戦。

次のような過程で変換されていく。

```
吾輩は猫である。名前はまだ無い。

![](/images/cat.jpg "無名の猫")

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

ちなみに、実際のソースコードの変更は <https://github.com/r7kamura/r7kamura.com/commit/51bf5289add41852c3b393b192e47393fb969133> のようになった。変換フィルタによる抽象化の仕組みを入れておいたおかげで、やりたいことが簡単に記述できるようになって嬉しい。
