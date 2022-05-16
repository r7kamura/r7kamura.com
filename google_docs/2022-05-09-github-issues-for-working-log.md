---
title: GitHub Issuesで作業ログを書く
---
GitHub Issuesで作業ログを書いているので、その方法をまとめる。

リポジトリ
-----

[gialog](https://github.com/r7kamura/gialog)を使うとブログ用のリポジトリが出来上がる。ここでIssueを書くと自動的にウェブページとして公開される。

[r7kamura/diary](https://github.com/r7kamura/diary)というリポジトリをつくり、[https://r7kamura.github.io/diary](https://r7kamura.github.io/diary/)で公開している。

Issueをつくる
---------

作業日ごとに「2022-05-09」のようなタイトルでIssueを用意し、作業内容や考えたことをコメントとして書き連ねていっている。スレッド形式で書いていけるので、作業ログと相性が良い。

[r7kamura/gh-diary](https://github.com/r7kamura/gh-diary)というGitHub CLI向けのプラグインを利用し、gh dというaliasでその日のIssueのページを開けるようにしていて、これが重宝している。

エクスポートする
--------

Issueやコメントの内容は、リポジトリのdataブランチにMarkdownファイルとして書き出されるようになっているので、例えばもし別のブログエンジンに移行したくなったときは、このファイル群を持ち出すと良い。
