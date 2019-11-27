---
title: ActionController::TestCaseにparamsとしてnilを渡せるようにした
---

https://github.com/rails/rails/pull/34737 の話です。Speee OSS Days という OSS の何かをやる会に今週も参加したので、前から気になっていた件を調べようといろいろと調査を進めていった結果、Rails に Pull Request を出すことになりました。

## ActionController::TestCase

今回 ActionController::TestCase の実装に修正を加える Pull Request を出した訳なんですが、そもそも ActionController::TestCase とは何なのかという話をしなければいけないと思います。これは Rails アプリケーションで Controller のテストを書くときに利用されるヘルパーです。Rails アプリケーションではテストを書くのに rspec-rails が利用されることが多いですが、rspec-rails であれば controller-specs を書くときにこの実装が利用されます。

今回手を加えたのは ActionController::TestCase::Behavior という module の #process というインスタンスメソッドです。これが Behavior という module になっているのは、実装を継承せずに再利用するための措置だと思いますが、今回の話ではあまり気にする必要はありません。controller-specs を書くとき、get :index, params: { foo: "bar" } のようなコードを書くことになると思いますが、この #get や #post は ActionController::TestCase によって提供されているメソッドであり、これらの内部実装として #process が呼び出されます。

## ActionController::TestCase とキーワード引数

Rails 4 までは、前述した #get や #post の引数は、順序のあるいわゆる普通の引数でした。例えば GET リクエストで ?foo=bar のような URI クエリを付けて #index アクションを呼び出すような処理をエミュレートしたい場合、Rails 4 までは get :index, foo: "bar" のようなコードを書くことになっていました。

Rails 5 からは、この引数がキーワード引数に変わりました。これにより、前述のコードは get :index, params: { foo: "bar" } のように書くことになりました。しかし Rails 5.0 では、Rails 4 から Rails 5 に移行しやすくするため、両方の書き方を許しつつ、非キーワード引数形式の呼び出し方をしていた場合は警告を出すようになりました。そして、Rails 5.1 でキーワード引数のみ許可するようになりました。

## params が nil の場合の問題

Rails 4 まで順序付き引数を利用していた名残で、これらのメソッドの params には nil を渡しても良いことになっていました。なぜこうなっているかと言うと、#process は process(action, parameters = nil, session = nil, flash = nil, http_method = 'GET') という感じの引数になっているのですが、parameters を省略しつつも後続の引数である session などを指定したい場合のために、nil を渡すことで省略できるようにしていたことが理由です。

しかし Rails 5.1 以降、キーワード引数しか許可しなくなったタイミングで、nil を渡すと NoMethodError が発生するようになってしまっていました。params が Hash である前提で Hash#symbolize_keys が呼び出される実装になっており、引数 params のデフォルト値として {} が指定されてはいるのですが 、直接 nil を渡すとデフォルト値は選択されないため、こういう例外が発生する状況でした。

## Pull Request の内容

対応として、デフォルト値は {} から nil に変更して、params が falsey な値の場合に代わりに {} が利用されるようにしたのが https://github.com/rails/rails/pull/34737 の Pull Request の内容です。params に false が指定されたときにも {} が利用されてしまうような実装ですが、false は流石に想定される値ではないので、このケースのことは考慮しないことにしました。

問題を簡単に再現するために最小限のテストコードも付けましたが、これは https://github.com/r7kamura/rails_kwargs_testing のテストを書いたときのコードと、 いつも通り https://edgeguides.rubyonrails.org/contributing_to_ruby_on_rails.html のテンプレートを参考にしました。

翌日 merge してもらえたので、Rails 5.2.3 辺りにはこの変更が含まれるのではないかと思います。とはいえ params に nil を渡せるのは後方互換性のためという気持ちで、Rails 6 では公式に渡せなくしたいですね。

## 余談

rails/rails は過去に何度か Pull Request を出しているんですが、まだ2つ分からないことがあって、CHANGELOG にエントリを追記すべきケースと追記すべきでないケースの違いと、常に失敗している CI の扱い方がよく分かっていません。
