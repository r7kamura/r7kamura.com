---
title: リリースの自動化
---

最近は下記のようにライブラリ等のリリースを自動化している。

1. バージョンを入力するとPull Requestを生成
2. Mergeするとリリース

## ラベルの管理

前回のリリース以降にMergeされたPull Requestからリリースノートが自動生成されてほしい。このとき、[Keep a Changelog](https://keepachangelog.com/en/1.0.0/)の形式を参考に、変更点が以下の7種類に分類されてほしい。

- add
- change
- deprecate
- fix
- remove
- security
- other

そこで、Pull Requestに予めラベルを付けておくことで、どの節に分類するかを決定させる。またこのようなラベリングの習慣を設けることで、各Pull Requestの粒度の是正もねらう。ラベルを利用したリリースノート自動生成機能自体はGitHubが備えているので、.github/release.ymlでそのラベルを使う旨を指定すれば良い。

このためにまず、リポジトリに適切にラベルを用意しておく必要がある。しかし、管理するリポジトリの数を考えると、リポジトリごとに手動で設定するのは大変。そこで、[github-label-sync-action](https://github.com/r7kamura/github-label-sync-action)というActionを用いてラベルの用意を自動化している。このActionを使うと、YAMLファイルに記述された定義を元にリポジトリにラベルが用意される。つまり、上述の7つのラベル用の定義をYAMLファイルに記述すれば良い。

自分は上述のようなお決まりのラベル群しか利用しないので、各リポジトリごとにお決まりのラベル定義を記述するのは無駄が多い。そこで、よく使うラベルの定義ファイルを管理するリポジトリ、[r7kamura/github-label-presets](https://github.com/r7kamura/github-label-presets)を用意している。前述のActionは、そのリポジトリのYAMLファイルだけでなく他リポジトリのYAMLファイルも参照できるので、このプリセットを参照することで共通化を図っている。

結果的には、リポジトリに.github/release.ymlとGitHub ActionsのWorkflowを1つ追加すればラベルが自動管理されるようになる。下記はその利用例。

- <https://github.com/r7kamura/sevencop/blob/1f3df937b9e507653178ac92f409678f96874914/.github/workflows/github-label-sync.yml>

課題としては、.github/release.yml (リリースノートの生成規則を定義するファイル) をリポジトリ間で共通化できず、同じ定義をリポジトリごとに書いているところが惜しいと感じている。

## Pull Requestの生成

バージョンを入力すると、リリース用Pull Requestがつくられてほしい。

GitHub ActionsのWorkflowに入力項目を設け、[r7kamura/bump-action](https://github.com/r7kamura/bump-request)というActionにその値を渡すことで、そのようなPull Requestを自動生成させている。このActionは、前述したGitHubの機能を利用してリリースノートを自動生成した上でdescriptionにそれを記載してくれる機能も持っている。過去のPull Requestにリリース用Pull Requestからのリンクが張られることになるので、結果的に後日Pull Requestを見たときに「このバージョンでリリースされたんだな」ということが分かりやすくて良い。

また、authorにmentionされることで (人によっては鬱陶しいかもしれないが) 自分の作成したPull Requestを含むバージョンが新しくリリースされることが通知される。自分が出したPull Requestを含む新バージョンがリリースされたら次の行動を起こしたいケースが多いため、この点も自分は気に入っている。

下記は利用例。

- <https://github.com/r7kamura/sevencop/blob/1f3df937b9e507653178ac92f409678f96874914/.github/workflows/bump-request.yml>

## リリース

バージョンが記載された何らかのファイルの履歴を比較することで、そのcommitでバージョンが変更されたことを検知し、新しいバージョンをリリースする。

例えばnpmのパッケージの場合、package.jsonを見ればversionプロパティでそれが確認できるので、Gitのタグを付けたり、GitHub Releasesにリリースを作成したり、NPMに新しいバージョンのパッケージを公開したりする。Rubyのライブラリの場合、lib/foo/version.rbを見たりする。Rubyのライブラリはバージョンの定義パターンがまちまちなことから対応が結構面倒。GitHub ActionsのActionのバージョンを管理したい場合なんかは、基本的にファイルにバージョンを記述する慣習が無いので、独自にVERSIONというファイルを設けてそこの記述する文化を設けて対応したりしている。

この辺のリリース処理はわりと煩雑な内容になるので、パッケージの種類ごとにリリース用Workflowを[Reusable workflowとしてまとめる](https://github.com/r7kamura/workflows)ことで共通化している。
