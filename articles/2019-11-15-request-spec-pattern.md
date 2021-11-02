---
title: request specのパターン
---

request specを書くときに従っているパターンを言語化する。

## ファイルパス

1つのエンドポイントに対して1つのテストファイルを用意する。

```
GET  /users
GET  /users/:id
GET  /users/:user_id/articles
POST /users/:user_id/articles
GET  /users/:user_id/articles/:id/edit
```

例えば、上記のエンドポイントに対して以下のファイルを用意する。

- spec/requests/users_index_spec.rb
- spec/requests/users_show_spec.rb
- spec/requests/user_articles_index_spec.rb
- spec/requests/user_articles_create_spec.rb
- spec/requests/user_articles_edit_spec.rb

以下の背景でこうしている。

- 関連度が近いファイルが辞書順で近いところに並んでほしい
- ほとんどの場合、エンドポイントとactionは1対1対応している

## ファイルの内容

例えば、`GET /users/:id` に対するコードは以下のように書く。

```
RSpec.describe "GET /users/:id" do
  subject do
    get "/users/#{id}"
  end

  let(:id) do
    user.id
  end

  let(:user) do
    FactoryBot.create(:user)
  end

  # ...
end
```

`describe`の中では、以下の順でメソッド呼び出しを行う。

1. `subject`
2. `around`
3. `before`
4. `after`
5. `let` / `let!`
6. `shared_context`
7. `shared_examples`
8. `context`

`let`、`shared_context`、`shared_examples`は、第一引数の辞書順で定義する。このとき、`let`と`let!`は区別しない。

`description`と`subject`については、[rspec-request_describer][1]の作法に従った書き方でもある。

## 共通ファイル

例えば、ログインを済ませるコードを共通化したい場合、以下のようなmoduleを定義して利用する。

```
# spec/support/my_app/spec_helpers/authenticatable.rb
module MyApp
  module SpecHelpers
    module Authenticatable
      extend ::ActiveSupport::Concern

      included do
        shared_context 'with current user' do
          # ...
        end
      end
    end
  end
end
```

トップレベルに奔放に定数を定義せず、そのアプリの名前空間に、ExampleGroupに`include`するmoduleを定義するための名前空間をつくり、そこに定義すること。

[1]: <https://github.com/r7kamura/rspec-request_describer>
