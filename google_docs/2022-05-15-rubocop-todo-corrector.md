---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/gG7iIFP9fRPSN3b0jdutfVBAKPp2X72rAXCYUvJ6ZEZQrL859neog-Ks2gQu6gePv6GmRmMLL65Lsm5M3nWZ3q4G5ooLGWs2RC1XtLAZTpQoPru1rNErtoE5J0BO5sWXJnk2JNpWjlbs__2narVqrMAm3ogp9KFXo3IWUjieWnbC6wrvajEv3vvVPQO-)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/0oi5TqiKiJ_8qZnj7UileNIJ_gAlzlMQegjKNHsMPXGxTC9M-K9buVDtkl3tJz-bOArDMy1eRg0cLTAj9b-SwIBU8CoFGPbqUi-0qF7F9zlZwPY0B6scv-0AGgPLfL8sbApxUqsnrhdSBMGXZhXOEXS3e3Wh62fmyRFsZjxTNiqcPOJV1ucPUhqued91)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
