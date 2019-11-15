---
title: GitHub Actions × GitHub Pagesではまった
---

このウェブサイトの生成には、GitHub ActionsとGitHub Pagesを[使っている][1]。その中で、幾つかはまりどころがあったのでメモ。

## GITHUB_TOKENの権限が足りない

デフォルトで用意されているGITHUB_TOKENを利用して静的ファイルをpushすれば、GitHub Pagesに反映される……かと思いきや、そうはならない。リポジトリの設定画面からGitHub Pagesのビルドで何らかのエラーが発生したことは確認できるのだけど、それ以上のことは分からない。

Publicリポジトリ向けに用意されているアクセストークンには、GitHub Pages向けのイベントを発火する[権限が足りないらしい][2]。解決策の一つとして、適切な権限を持ったPersonal Access Tokenを発行して代わりに使う方法があるので、今回はそうすることにした。

丁度最近、GitHub Packagesの正式リリースと共にGITHUB_TOKENにread:packagesの権限が追加されていた。GitHub ActionsからGitHub Pagesを利用したいケースはよくあるだろうと思うので、今後これについても権限が追加されるかもしれないと思っている。

## 文字列リテラルは一重引用符

キャッシュ機能を使うために `hashFiles("package-lock.json")` と書いていたのだけど、ここで怒られた。GitHub Actionsでの文字列リテラルは、二重引用符ではなく一重引用符で囲む必要がある。ドキュメントにも[そう書いてある][3]。

[1]: https://github.com/r7kamura/r7kamura.github.io/blob/113cef36c0c635f35f1c155061381776cfb71ff2/.github/workflows/publish.yml
[2]: https://github.community/t5/GitHub-Actions/Github-action-not-triggering-gh-pages-upon-push/m-p/26869/highlight/true#M301
[3]: https://help.github.com/en/actions/automating-your-workflow-with-github-actions/contexts-and-expression-syntax-for-github-actions#literals
