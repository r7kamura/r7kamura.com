---
title: rubocop-migration
---

[rubocop-migration](https://github.com/r7kamura/rubocop-migration)というGemをつくった。

ActiveRecordのmigrationでハマりがちな罠を回避したり、記法に一貫性を持たせるための、RuboCop向けのCopをまとめたライブラリである。例えば、テーブルへの読み書きをブロックしてしまうようなMigrationの書き方を検知し、それがもし別の方法で回避可能なものであれば違反とする、といったCopが含まれている。

背景としては、先週に[strong_migrations](https://github.com/ankane/strong_migrations)の話を見かけ、RuboCopから使える形で提供されていると便利そうだと思い用意した。実際、ほとんどのCopはこのライブラリの内容を参考に実装している。

異なる点として、strong_migrationsだと検知させるためにアプリケーションのコードに変更が必要で、またデータベースへの接続も要求される。一方で、rubocop-migrationはこの辺を要求しないという辺りが異なる。動的に情報を集められない分、対象のMigrationに関連するモデルファイルやdb/schema.rbがあればそれも静的解析して使っている。データベースに繋げないので、使うデータベースの種類は分かってもバージョンまでは分からないという問題があり、これには未だに困っている。例えば、MySQL 8.0以上では問題にならないコードを見つけたときなどに困る。「db/schema.rbにDBのバージョン情報も含めるのはどう？」とRails Discordチャンネルで尋ねてみたものの、特に取り合ってもらっていないので、これについてはまた別途Issueを立てて相談することにする。

rubocop-migration gemという名前について。元々5年前に同名のGemがあったのだけど、既に開発が停止されてリポジトリもアーカイブされていたので、[作者に連絡して名前を譲ってもらった](https://github.com/r7kamura/rubocop-migration/issues/1)。感謝。
