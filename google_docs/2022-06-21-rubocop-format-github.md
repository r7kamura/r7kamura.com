---
title: rubocop –format github
---
[RuboCop](https://github.com/rubocop/rubocop)をGitHub Actionsで使うならGitHubActionsFormatterが便利。

Workflow commands形式で出力してくれるので、GitHub Actionsが勝手にそれを拾ってPull Requestだと自動的に変更行に注釈を付けてくれるし、Checksの項目にもエラーと警告の一覧が出力される。

但し、この出力形式は主に機械が便利にキャプチャするためのものなので、人間がログを直接見るときには不都合なことが多い。例えばGitHub Actionsのログでは、Workflow commandsが使われたとき、色を付けたりしてくれるもののファイルパスや行番号を隠してしまう。問題のあったファイルパスを知りたいのに、これは問題だ。

rubocop –format progress –format github と複数指定し、人間用と機械用の両方を同時に出力させることで、この問題は解消できる。しかしこれにより別の問題が起き、GitHubActionsFormatterは出力を行うタイミングが悪く、ProgressFormatterと混ざってかなり見づらいことになってしまう。

2020年末頃から追加されていたのだけど、2022年中頃になって気付いた。これまでは[RuboCop Problem Matchers](https://r7kamura.com/articles/2020-11-10-rubocop-problem-matchers)で同等の機能を実現していた。そこで[Pull Request](https://github.com/rubocop/rubocop/pull/10730)を出してみている。

GitHubActionsFormatterは2020年末頃から追加されていたのだけど、2022年中頃の今になって気付いた。これまでは[RuboCop Problem Matchers](https://r7kamura.com/articles/2020-11-10-rubocop-problem-matchers)で同等の機能を実現していた。どちらを使うのがいいのかと言うと、正直どちらも甲乙つけがたい。公式機能はやはり公式なので安心感がある一方、このように二つの出力形式を併用するなどの手間が発生してしまうし、機械用の出力がログに同居するのも居心地が悪い。Problem Matchersでやる方はその点、正規表現でこっそりログを盗み見るので出力に余計なものが含まれないが、やはり公式に提供されている機能ではないという使いづらさがある。
