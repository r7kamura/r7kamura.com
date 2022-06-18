---
title: Sevencop/UniquenessValidatorExplicitCaseSensitivity
---

[sevencop](https://github.com/r7kamura/sevencop)にSevencop/UniquenessValidatorExplicitCaseSensitivityというcopを追加した。

ActiveRecord 6.0と6.1の間で、MySQLアダプターを利用している場合、UniquenessValidatorの発行するクエリが変わるという問題がある。この対策を講じる上で活用できるかもしれないCopだ。

```
validates :name, uniqueness: true
```

上のようなコードを検知し、下のようなコードに置き換える機能を持っている。

```
validates :name, uniqueness: { case_sensitive: true }
```

恒常的に使うCopでは無いが、次の点で価値がありそうだ。

- 機械的にコードを検出できる
- とりあえずバージョン間で挙動が変わらない形に自動変換できる
