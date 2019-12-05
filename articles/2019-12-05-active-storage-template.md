---
title: ActiveStorageの不具合報告をやりやすく
---

[Add bug report templates for Active Storage by r7kamura · Pull Request #37888 · rails/rails][0] についての話。

## スポンサーで浮かれてOSSをやる

GitHubスポンサーの審査を通過した旨をTwitterでつぶやいたところ、何人かにすぐにスポンサーになってもらえてモチベートされたので、Railsで最近気になっていたところについてPull Requestを送ってみることにした。

https://github.com/sponsors/r7kamura

気になっていたところというのは、ActiveStorageについて。仕事ではよくRailsのアップグレードを請け負っていて、いろんな会社のRailsアプリをRails 6にしているのだけど、「ActiveStorage 5だと動くのに6だと動かない！」という問題にあたることが多くて、最近はActiveStorageにIssueを出す作業を[やっていた][2]。

## ActiveStorageの既存Issueを眺める

過去のActiveStorageに関するIssueを読んでみると、丁寧な人は問題を再現させるための専用のサンプルRailsアプリをPublicリポジトリに用意して、そのURLを貼ったりしている。でも大半の人は、自分のアプリから抜き出してきたコード片を貼り付けているだけだったりして、これだと直す側も直しづらいし微妙だなとは思っていた。

しかし、そのためだけにサンプルのRailsアプリを用意するのが面倒だという気持ちは理解できて、実際自分もIssueを出すにあたって、Railsアプリをつくるのを少し躊躇した。

rails/railsリポジトリには、不具合報告用に、1ファイルで実行可能なテストのテンプレートが[用意されている][1]。ActiveRecord用、ActiveJob用、ActionController用などがあるのだけど、ActiveStorage用のものはこれまで存在していなかった。

## 不具合報告用テンプレートを用意する

それで今回少し時間をとって、汎用的に使えるテンプレートをつくり、冒頭に挙げたPull Requestを出してみた。すぐにmergeされたので、masterブランチでは既に見られるようになっています。[Railsガイド][3]にもこのテンプレートに対してリンクを用意していて、[edge版のRailsガイド][4]では既に反映されているけど、本家Railsガイドのほうには現時点ではまだ反映されていないので注意。

これでIssueの品質が良くなって、ActiveStorageの開発が捗るようになってほしい。

[0]: https://github.com/rails/rails/pull/37888
[1]: https://github.com/rails/rails/tree/v6.0.1/guides/bug_report_templates
[2]: https://github.com/rails/rails/issues/37836
[3]: https://guides.rubyonrails.org/contributing_to_ruby_on_rails.html
[4]: https://edgeguides.rubyonrails.org/contributing_to_ruby_on_rails.html
