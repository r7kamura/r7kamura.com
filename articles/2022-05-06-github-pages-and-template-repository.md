---
title: GitHub Pagesとテンプレートリポジトリ
---
GitHub Pagesを扱うテンプレートリポジトリをつくるときに気になる点について。

GitHub PagesとGitHub Actionsを利用してウェブサイトを構築する仕組みをつくり、それを[テンプレートリポジトリ](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)として公開したいとき、「利用者がテンプレートからリポジトリをつくると自動的にGitHub Pagesが有効化されたら良いのに」と思うことがある。しかし、単純にやると無効化された状態でリポジトリがつくられてしまう。

ではどうすると良いかというと、gh-pagesというブランチを予めテンプレートリポジトリ側に用意しておき、利用者に ☑ Include all branches のチェックを付けながらリポジトリを作成してもらうように案内すると良い。GitHubでは、初めてリポジトリを作成した時点でgh-pagesというブランチが存在する場合、自動的にそのリポジトリでGitHub Pagesが有効化されるようなので、この方法が成立する。

最近そういう類のテンプレートリポジトリを幾つかつくっていたので、この挙動について改めて調べることになった。あまり美しいとは言えない方法だと思うので、他により良い方法があれば教えてほしい。

*   [https://github.com/r7kamura/gialog](https://github.com/r7kamura/gialog)
*   [https://github.com/r7kamura/godolog](https://github.com/r7kamura/godolog)
