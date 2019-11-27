---
title: break-wordの指定方法の整理
---

自分がよく使う書き方はこう。

```css
body {
  word-wrap: break-word;
}
```

全てのブラウザに対応しており、記述量が短い。

## 継承

以下のすべてのプロパティは子孫要素に継承する。

- overflow-wrap
- word-break
- word-wrap

よって、デフォルトの挙動を一括変更したい場合は、body要素に指定するのが良い。

## word-wrap: break-word

今のところどこでも動く。元々Microsoftの拡張としてword-wrapというプロパティが存在し、各ブラウザもword-wrapという名前で実装していたが、後にoverflow-wrapという名前に変更された。

https://caniuse.com/#feat=mdn-css_properties_word-wrap

## overflow-wrap: break-word

IE11等で動かない。word-wrapの新しい名前。

https://caniuse.com/#feat=mdn-css_properties_overflow-wrap

## word-break: break-word

`word-wrap: break-word`と同じことが、このプロパティでも実現できる。IEやEdge等で動かない。

https://caniuse.com/#feat=mdn-css_properties_word-break_break-word

## break-all

word-breakプロパティを使うと、break-allという値も指定できる。これを指定すると、CJK (中国語、台湾語、日本語、韓国語) 以外のテキストにおいて、単語中などでの文字の改行に関する禁則処理を解除し、どの文字の間でも改行するようになる。
