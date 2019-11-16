---
date: 2018-04-15T02:41:21.482Z
from: medium
title: "ActiveRecordを試すときに便利なやつ"
---

手元で ActiveRecord を試したいときに、いちいちデータベースを用意したり、再現性のあるコード片に整えたりするのは、結構な手間に感じてしまうかもしれません。この記事では、そういったケースで利用できる知識を幾つかまとめておこうと思います。

以下は今回題材に使うコード例で、これを上から順に説明していきます。

ActiveRecord で .count の挙動を試す例

## bundler/inline

bundler/inline は Bundler 1.10 から追加された機能です。これを利用すると、Gemfile を独立したファイルとして用意することなく、スクリプトの中にその定義を埋め込めるようになります。

続くスクリプトがどのバージョンの Gem で動かせるのかということを明示でき、必要であればライブラリを実行時に自動的にインストールし、依存関係を調べて $LOAD\_PATH を調整し、require まで実行してくれます。

## ActiveRecord::Base.establish\_connection

ActiveRecord::Base.establish\_connection を利用することで、これからどのデータベースにどんな設定で接続しにいく予定なのかを指定できます。

簡単に試すだけであれば、SQLite が便利に使えます。SQLite のデータベース名 (SQLite 的にはファイル名) として :memory: を指定すると、ファイルを用意することなく、メモリ上で動作するデータベースを用意できます。プロセス終了時にこのデータベースは揮発するため、簡単な実験では役に立ちます。

[**In-Memory Databases**  
_When this is done, no disk file is opened. Instead, a new database is created purely in memory. The database ceases to…_www.sqlite.org](https://www.sqlite.org/inmemorydb.html "https://www.sqlite.org/inmemorydb.html")[](https://www.sqlite.org/inmemorydb.html)

## ActiveRecord::Schema.define

ActiveRecord::Schema.define を利用すると、ActiveRecord の migration で使う DSL を利用してテーブルの定義を用意できます。このメソッドは、Rails の db/schema.rb で利用されているものです。

## minitest/autorun

標準出力を利用することで挙動を確かめても良いのですが、スクリプト内でテストフレームワークを利用する方法を覚えておくと、再現性が高く、共有したときにより意図の伝わりやすいスクリプトを記述できる可能性が高まります。

Ruby のテストフレームワークでは、それまでに定義されたテストケースをスクリプト終了直前に自動的に実行する機能を備えていることが多く、大抵その機能には autorun という名前が付けられています。例えば Rails のデフォルトのテストフレームワークである minitest であれば、minitest/autorun を require しておくことで、その機能が有効になります。

## 使用例

下記の例では、rails/rails への Pull Request において、期待する動作と実際の動作との違いを説明するために利用しています。

[**Add missing \`require "benchmark"\` by r7kamura · Pull Request #32576 · rails/rails**  
_Summary Added require "benchmark" at the head of lib/active\_record/migration.rb. This is because it may raise NameError…_github.com](https://github.com/rails/rails/pull/32576 "https://github.com/rails/rails/pull/32576")[](https://github.com/rails/rails/pull/32576)

「active\_record/base.rb を読み込む前に ActiveRecord::Schema.define を使おうとしたら NameError が出るんだけど、本来ここは ActiveRecord::ConnectionNotEstablished が出るべき場所なんじゃないの？」というテストケースになっています。
