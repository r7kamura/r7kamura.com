---
title: rubocop-migration
---

[rubocop-migration](https://github.com/r7kamura/rubocop-migration)というGemをつくった。

ActiveRecordのmigrationでハマりがちな罠を回避したり、記法に一貫性を持たせるための、RuboCop向けのCopをまとめたライブラリである。例えば、テーブルへの読み書きをブロックしてしまうようなMigrationの書き方を検知し、それがもし別の方法で回避可能なものであれば違反とする、といったCopが含まれている。

背景としては、先週に[strong_migrations](https://github.com/ankane/strong_migrations)の話を見かけ、RuboCopから使える形で提供されていると便利そうだと思い用意した。実際、ほとんどのCopはこのライブラリの内容を参考に実装している。

異なる点として、strong_migrations gemだとコードに変更が必要で、またデータベースへの接続も要求される一方で、rubocop-migrationはこの辺を要求しないという辺りが異なる。より多くの判断材料を集めるために、対象のMigrationに関連するモデルファイルやdb/schema.rbがあればそれも静的解析して使うといったことをやっている。データベースに繋げないので、使うデータベースの種類は分かってもエンジンのバージョンまでは分からないという問題があり、これには未だに困っている。「db/schema.rbにDBのバージョン情報も含めるのはどう？」とRails Discordチャンネルで尋ねてみたものの、特に取り合ってもらっていないので、これについてはまた別途Issueを立てて相談することにする。

rubocop-migration gemという名前について。元々5年前に同名のGemがあったのだけど、既に開発が停止されてリポジトリもアーカイブされていたので、[作者に連絡して名前を譲ってもらった](https://github.com/r7kamura/rubocop-migration/issues/1)。感謝。
