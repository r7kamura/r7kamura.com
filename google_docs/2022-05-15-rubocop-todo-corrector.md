---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/HjUstwrZ3IR9iMjZzR21HKMo3xPbF4nazSCauM71F2bUqvAbmsiqeBEnmFwgPnAKdKBtuddqiKp4W__vAiWGLK7-aUwq4syE5GsX1wOtvTP6QB_99SstK8kqDwRbDrJAFNmhxpd1YOb8u0W6TRDlNy2T81AQf69I42WpZMSxdDcIlLEne15rZkRs)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/HkGWq-1oIs-HqG6z0_d_FSyFBq46Gu2p4euO_GMAEcGz4LACX-m-RCzqznZZ6S6dkgPesqZzhbLPjvFfYS8DL9BNQq7sU24Zb7LVpbkyidwrqa1hnaWK5FBB66b91LmIRVeOBdpE5yG-f1zsYmIWaxS58g3WvsouOhJazMRVvzDhzL-1XXuJ9b2C)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
