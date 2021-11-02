---
title: FactoryBotのfactoryへの期待
---

[FactoryBot][1]のfactoryはこう書かれていてほしい、という期待をまとめておこうと思う。

## 第一段階

最低限の基準として、attributesを与えなくてもレコードの保存に成功するように定義されていてほしい。

つまり、全ての（少なくともtraitを用いない場合の）factoryの定義について、以下のように呼び出せるように定義されていてほしい。

```ruby
FactoryBot.create(:user)
```

例えば、以下のように呼び出さ**なければならない**のであれば、使いづらく、良くない定義だと考えている。

```ruby
FactoryBot.create(:user, name: 'alice')
```

もちろん例外的な状況は存在するので、そういう場合には守らなくて良い。

## 第二段階

次の段階の基準として、2つ以上のレコードを作成してもエラーにならないように定義されていてほしい。

つまり、以下のように呼び出せるように定義されていてほしい。

```ruby
FactoryBot.create(:user)
FactoryBot.create(:user)
```

例えば、name属性にUniquenessValidatorが定義されていて、name属性の内容が決め打ちだったりすると、こういうコードは失敗する。factoryの定義で `sequence` 等の機能を利用して回避するのが望ましい。

[1]: <https://github.com/thoughtbot/factory_bot>

## その他

雛形で自動生成されるようなfactoryは、経験上、存在すらしていない方がましなことの方が多い。
