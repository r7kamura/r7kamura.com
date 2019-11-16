---
date: 2017-11-26T18:26:48.895Z
from: medium
title: "RSpec で単一の example を共有するためによく利用しているコード"
---

RSpec で細かく context を分けてテストケースを書いていると、複数の Example Group 間で単一の Example を共有したいケース、つまり異なる context で同じ it のブロックを共有したいケースによく遭遇します。

context "without current user" do  
  it "returns 200" do  
    is\_expected.to eq(200)  
  end  
end

context "with current user" do  
  include\_context "with current user"

  it "returns 200" do  
    is\_expected.to eq(200)  
  end  
end

この目的のために、shared\_examples (あるいはその alias) を利用することができますが、shared\_examples に付ける名前が必要になり、その名前を逐一考えるのが面倒であったりします。そこで、it に与えるメッセージを shared\_examples に与える名前としても使うというルールを課すことが自分の場合多いのですが、定義時には shared\_examples の引数と it の引数とで同じ内容を二重に記述することになるため、幾分冗長なところがあります。

shared\_examples "returns 200" do  
  it "returns 200" do  
    is\_expected.to eq(200)  
  end  
end

これをもう少し仕組み化できないかということで、例えば現在開発している Nippo というアプリケーションでは、この目的のために、以下のような module を定義しています。

require "active\_support/concern"

module Nippo  
  module SpecHelpers  
    module SharedExample  
      extend ::ActiveSupport::Concern

      module ClassMethods  
        # [@param](http://twitter.com/param "Twitter profile for @param") \[String\] name  
        def shared\_example(name, &block)  
          shared\_examples name do  
            it name, &block  
          end  
        end  
      end  
    end  
  end  
end

この module を利用して、RSpec を以下のように設定すると、shared\_example というメソッドが利用できるようになります。shared\_examples の単数形版です。

require "nippo/spec\_helpers/shared\_example"

RSpec.configure do |configuration|  
  configuration.include Nippo::SpecHelpers::SharedExample  
end

例えば、以下のように利用します。非ログイン時とログイン時のテストで、ステータスコードとして 200 を返す、という挙動を共有しています。

require "rails\_helper"

RSpec.describe "GET /" do  
  subject do  
    get("/")  
  end

  shared\_example "returns 200" do  
    is\_expected.to eq(200)  
  end

  context "without current user" do  
    include\_examples "returns 200"  
  end

  context "with current user" do  
    include\_context "with current user"

    include\_examples "returns 200"  
  end  
end

RSpec では it\_behaves\_like というメソッドも存在するように、shared\_examples に与える名前としては何らかの振る舞いを行う名詞として命名することが緩やかに期待されています。しかし正直なところ、テストケースを共有したいという目的のために適切な名前を考えるのは煩わしくもあるので、(三単現の主語を想定した) 動詞で始まるメッセージを名前として採用するように統一しています。
