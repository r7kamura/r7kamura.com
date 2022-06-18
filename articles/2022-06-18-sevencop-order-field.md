---
title: Sevencop/OrderField
---

[sevencop](https://github.com/r7kamura/sevencop)にSevencop/OrderFieldというCopを追加した。

このCopは、次のようにコードを書き換えてくれる。

```ruby
# bad
articles.order('field(id, ?)', a)

# good
articles.order(Arel.sql('field(id, ?)'), a)
```

勿論これで上手くいかないケースも多いが、これで上手くいくケースも多い。Railsアップグレード時の編集支援ツールとしては十分活用できるはずだ。
