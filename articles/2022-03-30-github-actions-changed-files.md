---
title: GitHub Actionsで変更ファイルに応じた処理
---

GitHub Actionsで、変更されたファイルに応じて処理を切り替える方法について整理する。

ここでは「Pull Requestで、Gemfile.lockや.rubocop.ymlに変更があった場合はすべてのファイルに対してRuboCopを実行し、それ以外の場合は変更のあったRubyのファイルに対してRuboCopを実行する」という例を考えてみる。

```yaml
name: rubocop

on:
  pull_request:

jobs:
  rubocop:
    runs-on: ubuntu-20.04
    steps:
      - uses: actions/checkout@v2
        with:
          fetch-depth: 0
      - uses: ruby/setup-ruby@v1
        with:
          bundler-cache: true
      - id: changed-files
        uses: tj-actions/changed-files@v18.5
      - id: rubocop-all
        if: |
          contains(steps.changed-files.outputs.all_changed_files, '.rubocop_todo.yml') ||
          contains(steps.changed-files.outputs.all_changed_files, '.rubocop.yml') ||
          contains(steps.changed-files.outputs.all_changed_files, '.ruby-version') ||
          contains(steps.changed-files.outputs.all_changed_files, 'Gemfile.lock')
        run: bundle exec rubocop
      - if: steps.rubocop-all.conclusion == 'skipped' && steps.changed-files.outputs.all_changed_files
        run: bundle exec rubocop --force-exclusion ${{ steps.changed-files.outputs.all_changed_files }}
```

[tj-actions/changed-files](https://github.com/tj-actions/changed-files)というActionを使うと、変更されたファイルのパス一覧を空白区切りの文字列として参照できるので、これを条件分岐に使うことにする。このActionを正しく動作させるために、actions/checkout@v2に `fetch-depth: 0` を指定している。

ifの項目で `contains` 関数や `||` オペレーターを利用すると、特定のファイルが変更されたときにのみ処理を行える。今回の例では、4つのファイルのいずれかが変更されたときに全てのファイルに対してRuboCopを実行、即ち引数無しで `rubocop` コマンドを実行している。

ifの項目で `steps.*.conclusion` を利用すると、if-else的な表現を行える。このためにif側のstepにidを割り当てている。前述の通り、`rubocop` コマンドは引数無しだと全てのファイルに対して実行してしまうので、変更されたファイルが存在しない場合は処理自体を実行しないようにも配慮している。つまりelse ifになっている。

GitHub Actionsのドキュメントでは、ifの項目で使える関数やオペレーターの説明は[Expressionsのページ](https://docs.github.com/en/actions/learn-github-actions/expressions)に、conclusionの説明は[Contextのページ](https://docs.github.com/en/actions/learn-github-actions/contexts)に記載されている。

変更されたファイルにはRubyではないファイルも含まれるが、`rubocop --force-exclusion` のようにオプションを付けると、例えコマンドライン引数としてファイルパスを指定したとしても、設定を元に対象のファイルかどうかを判断してくれるようになるので、これで上手くいく。例えばそういった機能が無いコマンドを対象とする場合、拡張子で判断するならば、次の例のようにもできる。これはSlimテンプレートを対象に、`slimcop` コマンドを実行する例。

```ruby
- if: steps.slimcop-all.conclusion == 'skipped'
  run: |
    echo ${{ steps.changed-files.outputs.all_changed_files }} |
    tr " " "\n" |
    grep "\.slim$" |
    tee >(xargs --no-run-if-empty bundle exec slimcop)
```

空白区切りの文字列を、`tr` コマンドで改行区切りに変換し、`grep` コマンドで特定の拡張子を持つパスだけを取り出し、`tee` コマンドとプロセス置換で実行対象のパス一覧を標準出力させつつ、`xargs` コマンドでコマンドライン引数としてパス一覧を `slimcop` コマンドに渡している。`--no-run-if-empty` オプションを利用し、入力が空の場合には実行しないようにしている。
