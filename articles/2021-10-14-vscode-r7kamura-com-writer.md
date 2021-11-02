---
title: 記事作成用のVSCode拡張
---

r7kamura.comの記事の雛形を用意してくれるVSCode拡張をつくった。

- <https://github.com/r7kamura/vscode-r7kamura-com-writer>

![](https://i.imgur.com/I0o4f73h.png "タイトルを入力すると適当なファイルを用意してくれる")

これまで新しい記事を書くたびに、VSCodeを開いて、articles/YYYY-MM-DD-some-good-slug.md というファイルをつくって、次のような形でタイトルを埋めて本文を書き始める…ということをしていた。

```
---
title: 適当なタイトル
---

本文
```

細かすぎて伝わりづらいテクとして、日付の部分はGoogle IMEで「きょう」で変換して "2021-10-14" を出したりしていたのだけど、流石にいろいろ面倒だなと思い、VSCodeの拡張でこの辺をドンとやってくれるものをつくることにした。

昔の自分であればこういうのはCUI向けのスクリプトで済ませていたかもしれない。しかし最近よく利用しているSlackワークフローというやつの体験が良く、こういうリッチなUIを用意しておくことの意義を、近頃は少し見直している。

- <https://slack.com/intl/ja-jp/features/workflow-automation>

"create custom vscode extension" とかでググるとVSCodeのドキュメントが出てくるので、それに従ってやっていく。Node.jsも入っていない環境なので、適当にnvmを入れて、Node.jsやNPMを入れるところから…。

- <https://code.visualstudio.com/api/get-started/your-first-extension>

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
nvm install --lts
npm install -g yo generator-code
cd /path/to/workspace
yo code
```

"r7kamura-com-writer" という名前の拡張をつくろうとすると、/path/to/workspace/r7kamura-com-writer に色々と雛形を生成してくれる。チュートリアルやAPIリファレンスを見ながら、package.jsonとsrc/extension.tsを編集して、次のような処理を行うようにする。

1. `r7kamura-com-writer.create` コマンドが実行されたときに反応する
2. URLに使う識別子とタイトルを入力させる
3. Markdownのファイルを作成する
4. Markdownのファイルをエディタで開く
5. Markdownのファイルの末尾の行にカーソルを移動させる

F5キーを押すと、この拡張が入った状態のVSCodeのウィンドウを新しく起動してくれるという機能が備わっているので、試しに動かしてみるということがやりやすい。

```
npx vsce package
code --install-extension r7kamura-com-writer-0.0.1.vsix
```

マーケットプレイスに公開するようなものでもないので、コードが完成したら、手元で適当にパッケージングしてインストールする。一通りやりたいことが出来るようになったので、これで完成。大した処理をしている訳でもないが、ちょっとした問題を自分で解決できて、満足度がとても高い。
