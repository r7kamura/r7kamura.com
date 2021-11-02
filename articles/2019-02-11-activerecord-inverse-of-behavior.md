---
title: ActiveRecordで同じクラスに自動でinverse_ofが設定されたときの挙動がおかしい
---

unasuke.rb という会で2時間ほど OSS とかの作業をやる機会があったので、前から少し気になっていた件を調査して <https://github.com/rails/rails/issues/35204> に Issue を出してみました。

## inverse_of

ActiveRecord で has_many や belongs_to などを利用すると、特定の条件下では inverse_of が自動で設定され、例えば user.posts.first.user のように子の親を辿ったときに同じオブジェクトが再利用されるという仕組みがあります。Post#user が呼ばれたときに SELECT * FROM users where user_id = ? という不要な SQL が発行されず、ActiveRecord のオブジェクトが再利用されるという感じです。

しかし、同じクラスに対して自動で inverse_of が設定され得る belongs_to が複数個定義されていたとき、どうやら挙動がおかしく、一方の belongs_to の inversion が他方の belongs_to に影響を与えてしまうような感じになっていました。

## 考えている解決方法

inverse_of を自動で設定させないオプションを渡すことで回避することもできますが、そもそもそういう inversion が自動で設定されてしまうこと自体がおかしいので、内部的に foreign_key ごとに inversion を管理するようにするか、あるいはそういう実装には上手くできないとしても、既に同じクラスに対して自動で inversion が定義されていたら2件目以降は自動で設定しないようにしたいなと考えています。
