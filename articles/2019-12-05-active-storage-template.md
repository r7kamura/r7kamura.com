---
title: ActiveStorageの不具合報告をやりやすく
---

https://github.com/rails/rails/issues/37836 についての話。

## 背景

GitHubスポンサーの審査を通過した旨をTwitterでつぶやいたところ、何人かにすぐにスポンサーになってもらえてモチベートされたので、Railsで最近気になっていたところについてPull Requestを送ってみることにした。

https://github.com/sponsors/r7kamura

## 不具合報告用テンプレート

rails/railsリポジトリには、不具合報告用に、1ファイルで実行可能なテストのテンプレートが[用意されている][1]。

ActiveRecord用、ActiveJob用、ActionController用などがあるのだけど、ActiveStorage用のものがこれまで存在していなかったので、今回 [rails/rails#37836][2] で追加した。

[Railsガイド][3]からもこのテンプレートに対してリンクされていて、[edge版のRailsガイド][4]では既に反映されているけど、本家のほうにはまだ反映されていない。

## これまでの報告方法

過去のActiveStorageに関するIssueを読んでみると、丁寧な人は問題を再現させるための専用のサンプルRailsアプリをPublicリポジトリに用意して、そのURLを貼ったりしている。でも大半の人は、自分のアプリから抜き出してきたコード片をコードブロックでdescriptionに貼り付けているだけだったりして、ちょっと微妙だなとは思っていた。

そのためだけにサンプルのRailsアプリ用意するのが面倒だというのは理解できて、実際自分も https://github.com/rails/rails/issues/37836 でActiveStorageのIssueをつくるにあたって、アプリをつくるのをかなり躊躇した。結局つくったけど。

その際になんとかして1ファイルで済ませられないかと試行錯誤して出来たスクリプトを、少し手直しして出来た副産物が、今回の不具合報告用のテンプレート、ということになる。

これで今後はActiveStorageのIssueや不具合調査を行いやすくなるし、Issueの品質もより良くなって、ActiveStorageの開発が捗るようになることを期待してる。

[1]: https://github.com/rails/rails/tree/v6.0.1/guides/bug_report_templates
[2]: https://github.com/rails/rails/issues/37836
[3]: https://guides.rubyonrails.org/contributing_to_ruby_on_rails.html
[4]: https://edgeguides.rubyonrails.org/contributing_to_ruby_on_rails.html
