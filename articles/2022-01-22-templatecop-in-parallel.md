---
title: Templatecopの並列実行
---

erbcopやslimcopの内部実装で利用しているtemplatecopを、parallelを利用して並列に実行できるようにした。環境によっては数分掛かっていた処理が数十秒で終わるようになり、たいへん喜ばしい。

- <https://github.com/r7kamura/templatecop/pull/1>
- <https://github.com/r7kamura/erbcop>
- <https://github.com/r7kamura/slimcop>
- <https://github.com/r7kamura/templatecop>
- <https://github.com/grosser/parallel>

以下は実装時に面白かったところについて。

ざっくり見るとtemplatecopはファイル単位で処理が独立しているので、次のように書き換えれば良い。

```ruby
# Before
offenses = file_paths.flat_map { ... }

# After
offenses = Parallel.flat_map(file_paths) { ... }
```

しかし、ここで二点の課題がある。

一点目。子プロセスの実行結果（ブロックの返り値）を親プロセスで受け取りたい場合、その値はMarshalでシリアライズ・デシリアライズできる形式でなければならない。今回はRuboCop::Cop::Offenseオブジェクトがインスタンス変数内にProcオブジェクトを含んでおり、そのままではMarshalに対応していなかったので、`#marshal_dump` と `#marshal_load` を定義することで解決を図った。

- <https://docs.ruby-lang.org/ja/latest/method/Object/i/marshal_dump.html>

二点目。親プロセスが参照しているオブジェクトの状態を子プロセスで変更しても、親プロセスが参照しているオブジェクトに結果は反映されない。templatecopでは、`@formatter` というオブジェクトを利用して、標準出力でファイル単位での処理結果を報告してもらいつつ (`...C...W...`みたいなやつね)、どのファイルにどんな種類の違反が何件あったかという実行結果もこのオブジェクトに蓄積していく仕組みになっている。そして蓄積されたデータを利用して、最後に次のような統計情報を表示する。

> 2 file inspected, 4 offenses detected, 4 offenses auto-correctable

しかし子プロセスで `@formatter` の状態を変更しても、親プロセスの参照する `@formatter`の状態は変わらないので、ファイル単位で並列化すると問題になる。これを解決するため、子プロセス達から集められた違反データを元に、親プロセス側で再度 `@formatter` に報告して辻褄を合わせることで解決を図った。但し、二重に結果が出力されてしまわないよう、再報告時は一時的に `@formatter` の出力を停止して黙らせている。
