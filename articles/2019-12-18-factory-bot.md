---
title: FactoryBotのfactoryへの期待
---

[FactoryBot][1]のfactoryの定義について、自分が期待していることをまとめておこうと思う。

## MUST

最低限の基準として、attributesを与えなくてもレコードの保存に成功するように定義されていてほしい。

つまり、全ての（少なくともtraitを用いない場合の）factoryの定義について、以下のように呼び出せるように定義されていてほしい。

```ruby
FactoryBot.create(:user)
```

例えば、以下のように呼び出さなければならないのであれば、使いづらく、良くない定義だと考えている。

```ruby
FactoryBot.create(:user, name: 'alice')
```

## SHOULD

次の段階の基準として、2つ以上のレコードを作成してもエラーにならないように定義されていてほしい。

つまり、以下のように呼び出せるように定義されていてほしい。

```ruby
FactoryBot.create(:user)
FactoryBot.create(:user)
```

例えば、name属性にUniquenessValidatorが定義されていて、name属性の内容が決め打ちだったりすると、こういうコードは失敗する。factoryの定義で `sequence` 等の機能を利用して回避するのが望ましい。

[1]: https://github.com/thoughtbot/factory_bot
