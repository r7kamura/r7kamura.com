---
title: GitHub Issuesで作業ログを書く
---
GitHub Issuesで作業ログを書き、[https://r7kamura.github.io/diary/](https://r7kamura.github.io/diary/)で公開している。やり方を説明する。

リポジトリをつくる
---------

[r7kamura/gialog](https://github.com/r7kamura/gialog)というテンプレートからリポジトリをつくる。これで空っぽのブログができあがって公開される。かんたん。READMEはちゃんと読むこと。

今回は[r7kamura/diary](https://github.com/r7kamura/diary)というリポジトリをつくり、それから次のように少しいじった。

*   サイト名を「My blog」から「r7kamura/diary」へ
*   記事タイトルに日付を使うので、投稿日の表示を削除
*   リポジトリの設定で6ヶ月間は他人がIssueを触れないように

Issueをつくる
---------

作業日ごとに「2022-05-09」のようなタイトルでIssueを用意し、作業内容や考えたことをコメントとして書き連ねていっている。スレッド形式で書いていけるので、作業ログと相性が良い。

[r7kamura/gh-diary](https://github.com/r7kamura/gh-diary)というGitHub CLI向けのプラグインを利用し、gh dというaliasでその日のIssueのページを開けるようにしていて、これが重宝している。
