---
date: 2018-04-21T16:41:56.974Z
from: medium
title: "rails_kwargs_testing で緩やかに Rails 5 向けのテストコードに移行する"
---

rails\_kwargs\_testing という gem の紹介記事です。

<https://github.com/r7kamura/rails_kwargs_testing>

## Rails 4 から 5 でテストで使う HTTP メソッドの引数が変わった

Rails 4 から 5 にかけて、ActionController::TestCase と ActionDispatch::IntegrationTest の #get や #post などのメソッドの引数の形式が変わり、Rails 5 ではキーワード引数を利用するようになりました。RSpec であれば、ActionController::TestCase は controller-specs、ActionDispatch::IntegrationTest は request-specs で利用するやつです。

<https://github.com/rails/rails/pull/18323>

## Rails 4 でも rails\_kwargs\_testing でキーワード引数を使う

Rails 4 から 5 への変更と共に、全ての引数の形式を書き換える変更を同時に入れることも可能です。しかし、Rails 4 から 5 への移行は比較的長い時間をかけて行われることが多く、他のブランチでテストが追加あるいは変更される中でこの手の変更を加えると、merge 時に問題が起きたり、conflict が発生したりする可能性が高まってしまいます。また、レビューの難しさや問題発生時の対処のことなども考えると、可能であれば Rails 4 と 5 で両方動く変更は先に加えておき、バージョン変更時の差分はできるだけ小さくしておきたいものです。

こういった背景から、Rails 4 の状態で引数の形式だけを変更しておきたいという需要があり、rails\_kwargs\_testing という gem をつくりました。実際には、業務委託で色々なサービスの Rails のバージョンを上げる仕事を請け負っている中で、これまで使ってきたコードをライブラリとしてまとめたような形になってます。

<https://github.com/r7kamura/rails_kwargs_testing>

## 使い方

README を読めば分かるようになっていますが、補足も含めて少し説明しておきます。rspec-rails を一般的な形で使っているとして、まずは Gemfile の :test group に rails\_kwargs\_testing を追加したあと、spec/rails\_helper.rb で rails\_kwargs\_testing から提供されている module を prepend します。

```ruby
RSpec.configure do |config|
  config.prepend RailsKwargsTesting::ControllerMethods, type: :controller
  config.prepend RailsKwargsTesting::RequestMethods, type: :request
end
```

controller-specs には RailsKwargsTesting::ControllerMethods を、request-specs には RailsKwargsTesting::RequestMethods を prepend しています。これで #get や #post などのメソッドがキーワード引数だけを取るように上書きされます。

次にメソッドの引数を全てキーワード引数形式に変更し、全てのテストが成功することを確認すれば完了です。変更しなければ ArgumentError が発生します。~~コードの変更には rails5-spec-converter を利用するのが良いと思います。コンマの扱いなどに少し不具合はありますが、それを差し置いても非常に便利なツールです。~~今となっては、rubocop-railsのRails/HttpPositionalArguments copを利用してauto-correctするのが良いと思います。

全てのテストが成功することを確認したら、主流の開発用ブランチへ変更を merge し、Rails 5 への残りの移行作業をがんばって進めましょう。
