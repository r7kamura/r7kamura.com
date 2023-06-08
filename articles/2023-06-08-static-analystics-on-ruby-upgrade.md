---
title: Rubyのバージョン変更前に依存ライブラリのソースコードを静的解析
---

やっておくと安心。

まず利用しているライブラリのソースコードを、適当な場所にコピー。

```
cp -r vendor/bundle/gems tmp/gems
```

各ライブラリに .rubocop.yml が含まれているとその設定が利用されてしまうので、削除する。前述のコピーはこのために必要。

```
rm tmp/gems/**/.rubocop.yml
```

適当なオプションを付け、Rubyのバージョン変更に関係がありそうなCopを指定しながら、RuboCopで静的解析する。

```
bundle exec rubocop \
  --ignore-disable-comments \
  --ignore-parent-exclusion \
  --ignore-unrecognized-cops \
  --only Lint/DeprecatedClassMethods,Lint/DeprecatedConstants,Lint/UnifiedInteger \
  tmp/gems/**/*.rb
```

古いRuboCop向けのコメントを書いていて警告が出たり、拡張子が `*.rb` なファイルにERBが記載されていて `Lint/SyntaxError` が出たり、Rubyのバージョン変更に関係無い違反が含まれたりするものの、それらは無視する。
