---
title: GitHub Issuesで作業ログを書く
---
GitHub Issuesで作業ログを書き、[https://r7kamura.github.io/diary/](https://r7kamura.github.io/diary/)で公開している。最近リポジトリを作り直したので、見せられる記事がまだ1件しか無くて例としてはいまいちなのだけど、まあそれは置いといてやり方を簡単に説明しておきたい。

リポジトリをつくる
---------

[r7kamura/gialog](https://github.com/r7kamura/gialog)を使い、ボタンを押して☑を付けてリポジトリをつくる。これで空っぽのブログができあがって公開される。かんたん。

今回は[r7kamura/diary](https://github.com/r7kamura/diary)というリポジトリをつくり、それから次のように少しいじった。

*   サイト名を「My blog」から「r7kamura/diary」へ
*   記事タイトルに日付を使うので、投稿日の表示を削除
*   リポジトリの設定で6ヶ月間は他人がIssueを触れないように

Issueをつくる
---------

作業日ごとに「2022-05-09」のようなタイトルでIssueを用意し、作業内容や考えたことをコメントとして書き連ねていっている。スレッド形式で書いていけるので、作業ログと相性が良い。

[r7kamura/gh-diary](https://github.com/r7kamura/gh-diary)というGitHub CLI向けのプラグインを利用し、gh dというaliasでその日のIssueのページを開けるようにしていて、これが重宝している。

エクスポートする
--------

Issueやコメントの内容は、リポジトリのdataブランチにMarkdownファイルとして書き出されるようになっているので、例えばもし別のブログエンジンに移行したくなったときは、このファイル群を持ち出すと良い。
