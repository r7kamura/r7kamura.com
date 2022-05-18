---
title: Learn Chrome拡張 in Y minutes
---

[copy-markdown-link](https://github.com/r7kamura/copy-markdown-link)という素朴なChrome拡張のコミットログを追いかけて、Chrome拡張のつくりかたを学ぼう。

## つくるもの

拡張のアイコンをクリックするかショートカットキーを押すと、Markdown形式でリンクをコピーする、という拡張をつくる。

## node -v

念のため、Node.jsのバージョンを確認しておこう。Node.js 18.0.0を使っているが、もう少し古くても多分大丈夫。

```console
$ node -v
v18.0.0
$ npm -v
8.6.0
```

## npm init vite@latest

`npm init vite@latest` で雛形をつくる。

```
cd /home/r7kamura/ghq/github.com/r7kamura
npm init vite@latest
cd copy-markdown-link
git init
git add .
git commit --message "Run: npm init vite@latest"
```

雛形生成時に幾つか質問されるので、次のように入力した。React等は不要で、TypeScriptで書く。

```
Project name: copy-markdown-link
Select a framework: vanilla
Select a variant: vanilla-ts
```

- <https://github.com/r7kamura/copy-markdown-link/commit/fc77158ab994a3feb29e9bf6c08342cc993db762>

## npm install

`npm install` でpackage-lock.jsonをつくってcommitしておく。

```
npm install
git add .
git commit --message "Run: npm install"
```

- <https://github.com/r7kamura/copy-markdown-link/commit/ce72f7423f65eb81eafc1b3a673af971b183f46e>

## @crxjs/vite-plugin

Vite向けのChrome拡張用プラグインを入れる。これがあると、manifest.jsonを元に良い感じにViteを設定してくれる。具体的には、どのファイルをどうコンパイルすべきかを、manifest.jsonの内容から推測してくれる。

```
npm install --save-dev @crxjs/vite-plugin
git add .
git commit --message "npm install --save-dev @crxjs/vite-plugin"
```

- <https://github.com/r7kamura/copy-markdown-link/commit/5e856b9e23887d3191336d0f0177ed1f56d9dbf5>

## manifest.json & vite.config.ts

manifest.jsonを書く。

アイコンを押すか `Ctrl+M` を押すとポップアップを開くようにしてもらう。また、必要な権限を定義しておく。現在開いているタブのURLとタイトルを取得するために `activeTab` を、でクリップボードに書き込むために `clipboardWrite` を使う。

更に、Viteの設定ファイルを用意して、さっき入れたプラグインの設定もする。

- <https://github.com/r7kamura/copy-markdown-link/commit/51934c4348cf85f3f97f66e9cadcc7160bf47e76>

この時点で、`npm run dev` または `npm run build` を実行して ./dist ディレクトリを拡張として読み込ませると、拡張が動くようになる。ソースコードを変更したらビルドして再読み込みのボタンを押す必要がある。

![](https://i.imgur.com/6st5qsEh.png)

拡張のアイコンを押すとポップアップが表示される。

![](https://i.imgur.com/mOCCNRXh.png)

## index.html

ポップアップ時に表示されるHTMLの内容を、デフォルトのものから変更する。"Copied" と表示して、src/main.tsを読み込むだけ。

- <https://github.com/r7kamura/copy-markdown-link/commit/e8244d964fe12d7420bacb666cac501ceb3a85f3>

シンプルになった。

![](https://i.imgur.com/7pFr8t5h.png)

## @types/chrome

TypeScriptでChrome拡張のAPIを利用するとき、これが無いと怒られが発生するので、`chrome` オブジェクト関係の諸々の型定義を追加しておく。

```
npm install --save-dev @types/chrome
```

- <https://github.com/r7kamura/copy-markdown-link/commit/6b6fc016bd91c6b882bc898ebcdb14728d90051d>

## src/main.ts

現在開かれているタブのURLとタイトルをMarkdownのリンク形式でコピーする、というコードを書く。

- <https://github.com/r7kamura/copy-markdown-link/commit/5bed37fd014932196a71c8bc8009847c7375c4d6>

## images/icon*.png

Chrome拡張が欲しがりそうなアイコン画像を用意する。アイコンはimagemagickで機械的に生成することに。

- <https://github.com/r7kamura/copy-markdown-link/commit/291dbc3e9eebdd0aff5e41ff26e415bc7d49ca12>

ビルドして再読み込みさせると、拡張のアイコンが変わる。

![](https://i.imgur.com/34KjJdxh.png)

## 完成

これで完成。おつかれさまでした。

## 参考情報

今後の開発の参考になりそうページへのリンクを掲載しておく。

- [Getting started - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/getstarted/)
- [Chrome拡張 つくりかた 令和最新版](https://r7kamura.com/articles/2022-05-07-chrome-extension-dev-2022)
- [r7kamura/copy-markdown-link](https://github.com/r7kamura/copy-markdown-link)
- [r7kamura/copy-rich-link](https://github.com/r7kamura/copy-rich-link)
- [r7kamura/amazon_url_shortener](https://github.com/r7kamura/amazon_url_shortener)
