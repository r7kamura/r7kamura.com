---
title: ActiveSupport::SafeBuffer#* を改善した
---

<https://github.com/rails/rails/pull/36012> の話です。

## ActiveSupport::SafeBuffer

Rails では XSS 対策として String を継承した ActiveSupport::SafeBuffer というクラスが提供されています。これは内部でこの文字列が安全かどうか（出力時にエスケープすべきかどうか）という情報を保持しています。そして HTML テンプレートでこの文字列を展開するときに、この情報を見ながらエスケープするかどうかを判断しています。

## String#*

最近開発に参加しているアプリケーションで `"<br /><br />"` という HTML を用意する機会があり、ActiveSupport::SafeBuffer を返す ActionView::Helpers::TagHelper#tag を利用して、`tag(:br) * 2` というコードでこれを実現しようとしました。しかし `String#*` を呼び出すと内部的に保持していた安全かどうかの情報を引き継がないようで、`tag(:br) * 2` は素の (安全ではない) String を返すようでした。

余談ですが、どうして `"<br /><br />"` という HTML が必要になったかと言うと、元々 `"<br /><br />".html_safe` というコードで実現していたのを、RuboCop の Rails/OutputSafety を有効化したことにより、String#html_safe を使わない方法でこれを実現する必要が出てきたからなのでした。RuboCop の違反を元にして rails/rails に Pull Request を出す流れが最近多い気がしています。

<https://www.rubydoc.info/gems/rubocop/RuboCop/Cop/Rails/OutputSafety>

## ActiveSupport::SafeBuffer#*

上述した問題を解決するために、ActiveSupport::SafeBuffer#* で情報を引き継ぐように上書きする <https://github.com/rails/rails/pull/36012> を出しました。先日 merge してもらえたので、恐らく Rails 6.0.0 には含まれるのではないかと思っています。

String 由来の ActiveSupport::SafeBuffer のメソッドには、他にも同じ問題を持つメソッドが含まれているような気がしているので、今後も似た変更が加えられるかもしれません。
