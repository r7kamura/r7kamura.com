---
title: ActiveSupport::Deprecation.behavior
---

RailsのDeprecation Warningを独自の方法で出力する方法について。

Railsはその機能について破壊的な変更を入れるとき、まず「次のマイナーバージョンでこの機能を廃止するよ」という警告を出すように計らってくれている。この警告は常に `ActiveSupport::Deprecation` の機能を使って出力される。

Railsアプリの設定で `config.active_support.deprecation = :notify` のような項目を見たことがないだろうか。例えばこの設定をした場合、Railsは起動時にこの設定値を見て、`ActiveSupport::Deprecation.behavior = :notify` みたいなことをしてくれる。`ActiveSupport::Deprecation.behavior` は警告の出力方法を司っているやつで、デフォルトで5パターンぐらいの出力方法を用意してくれている。その名前をSymbolを指定すると、それに設定してくれるという訳だ。

- `:log`
- `:notify`
- `:raise`
- `:silence`
- `:stderr`

個人的には `:raise` がお気に入りで、例えばtest環境で力強く `:raise` にしておくと、次のRailsのバージョンアップに備えて怪しそうなところをテストで炙り出すことができるようになる。

これだけでも便利なのだけど、もっと自由に設定したいときは `Proc` を指定する機能もある。最近した仕事では、検証環境で発生するRailsのDeprecation WarningをDatadogにタグ付きでログを記録させるようにしたいという話があり、この機能を使って対応した。

```ruby
# config/environments/production.rb
config.active_support.deprecation = -> (message, callstack, deprecation_horizon, gem_name) do
  # custom stuff
end
```

実は `Proc` だけでなく、`.call` に対応できる任意のオブジェクトを渡せるので、次のように書くこともできる。

```ruby
# lib/my_custom_rails_deprecation_handler.rb
class MyCustomRailsDeprecationHandler
  class << self
    def call(message, callstack, deprecation_horizon, gem_name)
      # custom stuff
    end
  end
end

# config/environments/production.rb
config.active_support.deprecation = MyCustomRailsDeprecationHandler
```

はずだったのだが、最近までその機能が不具合で動いていなかったので、この問題についてはPull Requestを出しておいた。

- [Fix NoMethodError on custom ActiveSupport::Deprecation behavior by r7kamura · Pull Request #45521 · rails/rails](https://github.com/rails/rails/pull/45521)

RailsのDeprecation Warningを独自の方法で出力する方法について、ざっくりと書いてみた。昔からある機能なので、何を今更という感じではあるが、あらためて書いてみた。

昔からあるActiveSupport::Deprecationの機能と言えば、自分は次のコードをよく手元で一時的に入れることが多い。

```ruby
# config/application.rb
ActiveSupport::Deprecation.debug = true
```

これをやると、Deprecation Warningを出力するときに全てのスタックトレースが出力されるようになる。例えばGemから問題が発生しているときなんかは、何もしないと「`config/environment.rb:5` から問題が警告が出ていますよ」という情報しか得られないのだけど、これを使うと原因に辿り着けるようになる。
