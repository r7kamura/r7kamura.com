---
title: CHANGELOGの話
---

最近は keepachangelog を参考に変更履歴を書いているという話です。

## Keep a Changelog

keepachangelog.com という、Changelog (※Changelog や CHANGELOG など色々な表記方法がありますが、以下ではこの表記で通します) を書くためのガイドラインなどを提唱している Web サイトがあります。推奨する Changelog の雛形だけではなく、Changelog とはどういうものか、なぜ必要なのか、「良い Changelog」や「悪い Changelog」とはどういうものなのか、ということを分かりやすく説明してくれていています。そのため、Changelog を書いてもらいたいときに参照できる情報源としても非常に重宝しています。

内容については元の文章を読んでもらったほうがわかりやすいと思うので、Keep a Changelog の内容を読んでください。以降では、自分が中でも大事だなと思ったところについて紹介しながら、自分の意見を添えておこうと思います。

## バージョニングルールへの言及

原文では「セマンティックバージョニングに従っていることに言及しておく」という感じの内容ですが、それに従っていないとしても、どういうルールでバージョンを変えているかに言及しておくことは重要だと思います。

自分の場合、なんとなくセマンティックバージョニングに従っているつもりでリリースを重ねていることも多かったんですが、「セマンティックバージョニングに従っています」と明言することで背筋も伸びるし、意図せず変なバージョンを切ってしまうことが減ったかなと思ってます。バージョン変更時には Changelog ファイルを編集することになるので、そこにバージョニングのルールが書かれていると丁度良いと思います。

## リリース日の併記

利用者として「1つ前のバージョンがリリースされたのが3年前か...」「先週新しいバージョンがリリースされたばかりなのか」という情報が開発の助けになることが多いので、バージョンごとのリリース日が分かりやすく書いてあると嬉しいなと思い、最近では自分も書くようにしています。

例えば GitHub でリリースごとにタグを切ってバージョンを管理していれば、GitHub の releases のページで調べることも可能なんですが、今のところそこまで一覧性が良いわけではないし、ホスティングしているサービスごとに調べ方が違うという点でも少し困ります。例えば Bitbucket にコードをホスティングしているとか、ホスティングは GitHub で行っているけれど Git のタグでは管理しておらず、パッケージのホスティングサイトの方だけでバージョンを管理しているとか。

個人的に Changelog は、機械ではなく人間のために、ある程度冗長になることを許容しながらも情報をまとめておくためのキュレーションサービスだと思っているので、Changelog にリリース日を書いておくというのは、作業コストの低さに比べて見返りの大きい良い活動だと思っています。

## 変更内容を種類で分類

Keep a Changelog では、以下の6つの種類のいずれかに変更内容を分類して記述したほうが良いとしているようです。

- Added
- Changed
- Deprecated
- Fixed
- Removed
- Security

辞書順で列挙しています。自分の仕事では Web アプリケーションで使っているライブラリのバージョンアップ作業を担当することが多いんですが、この作業の中では、依存している様々なライブラリのバージョン変更をひとつずつ確認するという工程が必要になります。その中で Changelog から「あ、ここでは不具合修正しか行われていないんだ」「ここでは変更が加わったんだ」というようなセマンティックバージョニングから得られる以上の情報が簡単に得られると非常に捗るので、この分類は非常に有用だと思っています。好き勝手に分類をつくっていくと分かりづらくなっていくと思うので、予め決められた分類しか使わないということも地味に大事そうな気がしています。

## 未リリースの変更内容

開発者としてもリリース作業が楽になるし、利用者としても予定が立てやすいので、次のリリースに含める予定の変更内容を含めるセクションがあると良い、という話がありました。確かにその通りで、リリースするタイミングで前回のバージョンからの変更点を振り返って情報を集める作業は大変だし、Pull Request を送って変更する人の方が変更内容の適切な表現方法を知っている可能性が高いので、個々の変更のたびに都度 Changelog に追記していけると理想的だと思います。

## おわり

Keep a Changelog の話については以上です。完全にこのガイドラインに従うべきだとまでは思いませんが、書き方のガイドラインのひとつとして知っておくと、便利に使える機会が多いと思います。

## 余談: UPPER CASE
自分が README や NEWS, INSTALL, HACKING などのファイル名に大文字を使う理由を知ったのは、2009年頃にプログラミングを始め、初めて GitHub を利用したときのことだったと思います。それまではなんとなくそういう慣習があるんだなあという気持ちでいましたが、自分がそれを書く立場になったことで初めて疑問を持つことになりました。昔は日本語だと「れあどめ.txt」のようなかわいい名前のファイルが含まれていることも結構ありましたが、今でも Vector とか探せばまだそういう文化圏が生き残っているんでしょうか。

これから知る方は、[この StackOverflow の質問][1] などを参考にしてください。

## 追記: 2022年9月26日

最近はGitHub Releasesの機能が充実してきたので、CHANGELOG.mdよりこちらを利用するようになってきました。

- [リリースノート管理術](https://r7kamura.com/articles/2022-07-18-release-notes-management)
