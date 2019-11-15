---
title: request-specの記述パターン
---

RSpecでrequest-specを書くときに自分が従っているパターンを言語化しておこうと思う。

## ファイルパス

1つのエンドポイントに対して1つのテストファイルを用意する。

```
GET  /users
GET  /users/:user_id
GET  /users/:user_id/articles
POST /users/:user_id/articles
GET  /users/:user_id/articles/:id/edit
```

例えば上記のようなエンドポイントがあるとすると、以下のようなファイルを用意する。

- spec/requests/users_index_spec.rb
- spec/requests/users_show_spec.rb
- spec/requests/user_articles_index_spec.rb
- spec/requests/user_articles_create_spec.rb
- spec/requests/user_articles_edit_spec.rb

以下の背景でこうしている。

- ファイル群を辞書順で並べたときに、関連度が近いファイルがより近いところに並んでほしい
- ほとんどの場合、エンドポイントとactionは1対1対応している

## ファイルの内容

コードはこう書く。

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

トップレベルの`describe`の中では、以下の順でメソッド呼び出しを行う。

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

例えばログインを済ませるコードを共通化したい場合、「`include`すると`shared_context`が定義されるようなmodule」を定義して使う。

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

ファイルパスと定数名と実装のパターンはこんな感じ。トップレベルに奔放に定数を定義せず、そのアプリの名前空間に、ExampleGroupに`include`するmoduleを定義するための名前空間をつくり、そこに定義すること。

[1]: https://github.com/r7kamura/rspec-request_describer
