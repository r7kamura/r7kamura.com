---
title: リリースノート管理術
---
みなさま、OSSの変更履歴、要するにCHANGELOGやリリースノートはどのように管理しておられるでしょうか。自分はというと、抱えるリポジトリも数百個に増えてきて、まあ要するに細かく管理するのがだるく、最近は変更履歴の管理方法も変わってきました。

CHANGELOGからGitHub Releasesへ
---------------------------

昔は、おおよそ[Keep a changelog](https://keepachangelog.com/en/1.0.0/)の方式に準拠したCHANGELOG.mdを書いていました。semantic versioningでバージョン管理をしながら、個々のバージョンごとに次のセクションを設けて変更内容を説明するような感じです。

*   Added
*   Changed
*   Deprecated
*   Fixed
*   Removed
*   Security

今は、新規につくるリポジトリではCHANGELOG.mdは用意せず、GitHub ReleasesにKeep a changelogに似た形式で変更内容を記載することにしています。昔はGitHub Releasesの出来もあまり良くなく、認知度も低かったので、GitHub Releasesで変更履歴が管理されている他所様のライブラリを見るたびに「CHANGELOG.mdを用意してほしいぜ……」と思っていたこともありました。しかし最近では意識も変わり、またGitHub Releasesも使いやすくなってきたので、これで良いかと思うようになりました。

CHANGELOG.mdにまとまっている方が分かりやすいという気持ちも確かにあるのですが、Contributorの方も含めてルールを統制してもらおうと思うとなかなか難しかったり、CHANGELOGを自動生成するにしても諸説あって楽ではなかったり、また素朴にやるとコンフリクトが発生しやすかったりと、なかなか大変です。この微妙な煩わしさのせいで開発やメンテが停滞すると元も子もないので、GitHub Releasesで自動生成するぐらいがコスト的に丁度いいかなというのが、今の自分の落とし所です。

リリースノート自動生成
-----------

[GitHubはリリースノートを自動生成する機能を備えています](https://docs.github.com/en//repositories/releasing-projects-on-github/automatically-generated-release-notes)。そのバージョンでMergeされたPull Request達をまとめてくれる機能です。各Pull RequestへのリンクやそのAuthorの名前、またそのバージョンでのContributors一覧なんかも含まれるので、なかなか便利です。これを自分で生成しようとしたらそこそこ大変。自分の名前の箇所は、GitHubの機能でハイライトされてますね。

![](https://lh3.googleusercontent.com/fu3buY0YI_SplNWnJC4quegTSzqT_Nts71UBmnKgr6orBPcFrHGpPSDCHlWgoXBjptO81Z5ujdtFqylmwWGZlyi9mOrJEC2W94q5dXNXvGBdopzS1gLKkpuz7NKE2ojhoZ8gcLwOT-Ej5HlU1pLJWbo "自動生成されたリリースノートの一例")

.github/release.ymlという定義ファイルを用意しておけば、Pull Requestに付いているラベルごとにセクションを分けてくれる機能も付いています。自分はKeep a changelogライクな方式で記載したいため、add・change・removeなど6種類のラベルを用意し、これを個々のPull Requestに付与しています。基本的にはレビュー時に付けますが、忘れていてもリリース前に付けておけばOKで、またリリース後でも後から再生成したり手作業で編集したりもできます。

Othersというその他枠のセクションも用意しているので、ライブラリの利用者に影響があるPull Requestは6種類のセクションにまとまり、その他の変更、例えば開発環境の仕組みが変わったとか、CIを別のサービスに変更したといったものなんかがOthersのセクションにまとめられて、これも意外と便利なところです。

ちなみにですが、この「リリースノート用のMarkdownの文字列を生成する」という機能はGitHub APIからも使えて、しかも利用する定義ファイルも好きに選択できます。これは強力な機能で、例えば業務でのアプリのリリースなんかでも、適切にラベルを運用していれば、内部の開発者用リリースノートを用意したり、QA担当者用リリースノートを用意したり、といった用途で活用できます。

これらの仕組みの存在により、「Pull Requestのタイトルやラベルを適切に付与しよう」という意識が強まるのも良いことだと思います。conventional commitを用いて自動生成するような方式だと、メンテナ側が変更内容に手を加えるのが容易ではないですが、Pull Requestのタイトルやラベルは後から簡単に改善できます。この改善はPull Requestの検索時など他の用途に対しても有利に働くので、いい仕組みだと思います。

ラベル自動管理
-------

リポジトリごとにKeep a changelog相当のラベルを用意するのが面倒なので、[github-label-sync-action](https://github.com/r7kamura/github-label-sync-action)というGitHub Actionでラベルの用意を自動化しています。各ラベルの名前・説明文・色をlabels.ymlに記載しておくと、自動的にそのリポジトリのラベルを同期してくれるというものです。

このGitHub Actionでは外部のリポジトリに配置しているlabels.ymlも指定できるので、[github-label-presets](https://github.com/r7kamura/github-label-presets)というリポジトリにお決まりのパターン集をつくり、基本的にはこれを参照して使うことにしています。リポジトリごとに変更したくなってきたら、そのタイミングで独自のlabels.ymlを運用し始めるような感じ。

![](https://lh6.googleusercontent.com/sdwoeIYIhM5t2HSHCd5CvBGAUrGJ_YDabZncvsJQm0ZKcJMMYFii5x30cSWF-V3h22NhcpSdRZ3gOfcQtnmrMXnjGF5y1QwogEatPcrRnAiYl1S8NVRWyglgHvEHYmEi6WqcFCOWsJDPGVXniBhrF9Q "自動的に用意されたラベルの例")

自動リリース
------

タグやリリースのような新規バージョンの発行作業も、最近はGitHub Actionsを使って自動的に行うようにしています。例えばChrome拡張であれば、manifest.jsonにバージョンを記載しますよね。その変更を検知して、自動的にGitのタグを発行し、リリースを発行し、というWorkflowを組んでいます。

リポジトリごとにそういったWorkflowを用意するのは面倒なので、[Reusable workflows](https://docs.github.com/en//actions/using-workflows/reusing-workflows)という仕組みを使い、自分用のWorkflowを[r7kamura/workflows](https://github.com/r7kamura/workflows)にまとめています。例えばNPMパッケージであればpackage.jsonのversionプロパティを解析すれば良いとか、CHANGELOG.mdでバージョンを管理しているプロジェクトは先頭のほうの見出しを解析すれば良いとか、またGitHub Actionをリリースするときはv1ブランチのようなメインバージョン用のRefを最新版に保つ必要があるとか、プロジェクトの性格に応じた再利用可能なWorkflowを用意しています。

新規バージョンの自動的な発行は、ただ手間やミスが減るということもそうですが、透明性やコミュニケーションコストの意味でも効果があると思います。新機能を入れたバージョンが早くリリースされてほしいんだけど、ただ忘れているだけであれば要求をしたいが、誰が権限持っててどういうフローで承認取れば良いのか分からん……みたいなことがよくあり、その辺がコードで管理されていると、Pull Requestでバージョン変更を要求できたりして楽できます。あとはまあ単純に、久しぶりすぎてリリース方法を思い出せないとか、開発環境を変えたのでその言語のリリースに必要な実行環境が手元に用意できていないとか、そういう問題も解消できて嬉しい。

まとめ
---

リリースノートの管理方法について、次のような話をしました。

*   最近はGitHub Releasesを使っている
*   ラベル管理に[github-label-sync-action](https://github.com/r7kamura/github-label-sync-action)を使っている
*   タグやリリースの発行もGitHub Actionsで自動化している

mizdraさんの[リリースノート自動生成テクニック](https://www.mizdra.net/entry/2022/07/08/181825)に触発されて、この機会に自分の管理方法を改めてまとめてみることにしました。他の方の管理方法やポリシーもぜひ読んでみたいです。
