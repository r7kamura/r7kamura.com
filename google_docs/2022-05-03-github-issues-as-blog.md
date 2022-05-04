---
title: GitHub Issuesでブログを書く
---
GitHub Issuesで記事を書けるブログシステムをつくった。

*   [https://github.com/r7kamura/gialog](https://github.com/r7kamura/gialog) (ソースコード)
*   [https://r7kamura.github.io/gialog-example/](https://r7kamura.github.io/gialog-example/) (デモサイト)

使い方
---

READMEの手順に従って「Use this template」から新しいリポジトリをつくると、数分後にGitHub Pagesでブログが公開される。新しくIssueをつくると、数分後にそれが記事として公開される。

見た目を変更したいときは、リポジトリのソースコードを直接編集する。このブログは[Next.js](https://nextjs.org/)でつくられていて、ソースコードもチュートリアルに出てくるような簡単なものになっている。デフォルトだとブログタイトルが「My blog」になっているので、まずはここを変更することから始めるのが良いと思う。

なぜつくったか
-------

簡単に自前のブログをつくれるように、というコンセプトでつくった。

自分は人のつくったブログを見るのが好きであるし、ウェブ技術において大切なことはすべてブログが教えてくれたと思っている節があるので、ウェブの技術に興味のある人達に、自分のブログを運用してみてほしいと思っている。

しかし、実際に自分でブログを用意しようとしても、初学者にとっては最初から難しめのプログラミングの知識を要求されたり、各種サービスの初期設定をやらされたりと、なかなか難しいことが多く、なかなかに勧めづらい現状がある。

そこで「ボタンを押すだけでブログが出来上がり、使っている内に徐々に最近のウェブの技術を読み解いていけるようなものがあると良いのでは」と考え、今回こういうものをつくってみることにした。GitHubの使い方は学んでおいて損はないし、GitHub Issues、GitHub Actions、GitHub Pagesで完結するように実装すれば、GitHubのアカウントを用意してもらうだけで済む。

似ているプロダクト
---------

同じくGitHub Issuesをブログとして使う発想のプロダクトを紹介する。

*   [2020-11-08 このブログの実装 2020年版 - waka.dev](https://waka.dev/entry/2020-11-08%20%E3%81%93%E3%81%AE%E3%83%96%E3%83%AD%E3%82%B0%E3%81%AE%E5%AE%9F%E8%A3%85%202020%E5%B9%B4%E7%89%88)
*   [https://github.com/azu/english-notes/issues/3](https://github.com/azu/english-notes/issues/3)
*   [https://github.com/miyaoka/gh-blog](https://github.com/miyaoka/gh-blog)

これらはいずれも、CDNに久しぶりにリクエストがあるたびにキャッシュを更新する設計である。一方で今回つくったものは、GitHub Issuesに変更があるたびに静的ファイルを更新する設計である。これは「ボタンを押すだけでブログが出来上がる」という機能を実現するために、GitHubのサービス群だけで完結させる必要があり、こうしている。
