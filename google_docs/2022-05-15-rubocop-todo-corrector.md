---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/N7qrMhsf2bl2ZE3jwFgpHLETwqxcxKYXHY0BkIEGn0FPCMs2qDwTpsEJwVGTkFCqkTwZvpruDUpuLz5HiaP9u0Dvo7WsnpO2w5UrqC1gP8q7y7Pm0eA4eeWtTDCD3sSrEXva7LoAaG1U_3KNpQ)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/ZPTaIzI1VlRuEaAbZlkscIBA9hV9MI-IbiIlaSajPNIQS9M_IWX-X8VKz6ob1nzxrp2k9S6d_4jGP798uc_ZSyeRWDlMHwW-NyjfdWNYBWCe_muTjy3SmxoYC1GA0azDmevC0yVMjg6aU5-UBw)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
