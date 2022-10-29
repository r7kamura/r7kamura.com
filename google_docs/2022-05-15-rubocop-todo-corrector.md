---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/U2j9kAtzzCtT9akm_a4K4pUwm64op-_05FO8iZNGEOsKVHjGS4ktyZcyR_shGzrv5mCVqtS39qKOuhHq2sVZ685u4XFLk98DavRIS9Hc4bMKU_9gI7qyDnAfguo5-ZdiBqdgEJH3MbfMJpHeaOxyLD8ZEk1BSf_UMqOzFH8fRNRhPINx_F4b8fTc)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/8YL9eb-K5M-2bpFX_UaBCD9cvl0B8OtFyacHJnZLSQVK4B4D1ap7NlyKMl7sfcVsB5ZfFqiF-w-SE9dxpD_WVKNUHoYkP3wF-X_mFx13_qDh8a2mBxAkYvRkU7DXaqMm-iXiDpZ2KmFybwI46hBef1ALCwvpqrg_bRZl965TuOfDZpLJbKJuDQkD)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
