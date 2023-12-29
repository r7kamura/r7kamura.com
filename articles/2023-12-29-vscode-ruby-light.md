---
title: vscode-ruby-light開発日記 - Prismパーサー導入編
---

[vscode-ruby-light](https://github.com/r7kamura/vscode-ruby-light)の開発中に考えたことを書いていきます。今回は、内部で利用しているRuby用パーサーの[tree-sitter-ruby](https://github.com/tree-sitter/tree-sitter-ruby)から[Prism](https://github.com/ruby/prism/tree/main)への移行について書きます。

## @ruby/prismパッケージの概観

Prismは、JavaScriptからもその実装を利用できるよう、@ruby/prismという名前でnpmパッケージを公開しています。

何が含まれているパッケージなのかというと、まずWASMバイナリという形でコンパイルされたPrismの実装と、それを便利に使うためのJavaScriptの実装、それからTypeScript向けの型定義ファイルが含まれています。これらはESModuleという形式に従ってモジュール化されています。またruby/prismのリポジトリ内に、JavaScript向けの簡単なドキュメントも含まれています。

もちろん、本拡張でもこのnpmパッケージを利用しました。

## CommonJSからESModuleへの移行

本拡張に含まれるLanguage Serverの実装ではもともと、公式の雛形に従い、CommonJSが利用されていました。

基本的に、CommonJSのモジュールからESModuleのモジュールは利用できません。@ruby/prismは前述した通りESModuleを採用しているので、今回を機にCommonJSからESModuleへ移行することにしました。

とはいえ、基本的には等価な処理を実現できることが分かっているので、単純な変換作業が多いだけで、そこまで難しい変更ではありませんでした。要点を整理すると、以下の作業が必要でした。

- package.jsonで、ESModuleを利用することを示す
- tsconfig.jsonで、ESModule向けにコンパイルすることを示す
- `import` でこれまで省略が許されていた拡張子を補う
- `require` を利用している箇所を書き換える

## VSCode拡張からのWASMの利用

「WASMバイナリで実装が提供されている」って何？という話ですが、そんなに難しいものではありません。

例えば本拡張のようにNode.jsから利用する場合、prism.wasmというファイルを `fs.readFileSync` で読み込んで、WASMを扱う上でのお決まりのパターンで初期化処理を書くと、便利に呼び出せる関数が取り出せるという感じです。

これはWASMバイナリ側の実装によりますが、標準入出力を行ったりメモリ割り当てを行ったりしたいという都合で、WASMバイナリの内部実装にはOSの機能を使うような処理が含まれている場合があります。そういった処理をWASMバイナリに含められるように、WASI (WebAssembly System Interface) という仕様があり、WASMバイナリの利用者側で初期化時にWASI互換のアダプタを用意してあげることになっています。勿論、そういった機能に依存していない実装であればこれは不要ですが、@ruby/prismの場合はこれが必要な実装になっています。

一般的なNode.jsのランタイムであれば、特に労せずして簡単にWASI互換のアダプタを用意できるのですが、VSCode拡張のランタイムは少し特殊な環境で、これが利用できません。そこで今回は、WebブラウザからWASMバイナリを利用するときによく使われるWASI用のShim、[bjorn3/browser_wasi_shim](https://github.com/bjorn3/browser_wasi_shim)で代用することにしました。

## TypeScriptからの@ruby/prismの利用

今回はTypeScriptから@ruby/prismを利用することになりました。今回のような、Language Server Protocolや抽象構文木を扱うコードを書く場合は特に、型検査の恩恵を大きく受けられます。

TypeScriptから@ruby/prismを利用する場合、TypeScript向けの型定義ファイルがパッケージの `types/*.d.ts` というパスに含まれているので、これを利用するだけで十分です。ただ、パッケージ側にニ点ほど問題があったので、それらに対処する必要がありました。

一点目は、型定義の誤りです。Prismは元々C言語で開発されている訳なので、コードをある程度機械的に生成することでJavaScript向けのnpmパッケージを提供しています。Prismの生成するJavaScriptファイルには、JSDocという形式に則ったコメントで型注釈が記述されています。最近のTypeScriptコンパイラは、このJSDocの型注釈を利用して型定義ファイルを生成できるのですが、この型注釈にいくつか誤りがあったため、これを修正する必要がありました。

- [Fix `Cannot find name 'Node'` error in types/visitor.d.ts by r7kamura · Pull Request #2107 · ruby/prism](https://github.com/ruby/prism/pull/2107)

二点目は、型定義ファイルの配置場所です。細かい話をすっ飛ばして説明すると、`src/foo.js` というファイルに対して `src/foo.d.ts` というパスに型定義ファイルがあれば、TypeScriptコンパイラは `src/foo.js` を読み込もうとしている箇所で自動的にその型定義を検出してくれます。一方、実際には `types/*.d.ts` に型定義ファイルがあるので、ここでミスマッチが生じ、そのままでは型定義ファイルがないですよというエラーが出てしまいます。利用者側でTypeScriptコンパイラに対して適当な設定を追加すれば解決できるのですが、利用者に都度この設定を強制するのは大変だと思うので、一旦Issueを用意してより良い形を模索することにしました。

- [More user-friendly type definition files structure for TypeScript · Issue #2114 · ruby/prism](https://github.com/ruby/prism/issues/2114)

## パーサーを扱う箇所の書き換え

本拡張は、以下の機能を提供しています。

- Diagnostics
    - RuboCopによる違反箇所の検出
- Document Formatting
    - RuboCopによる違反箇所の自動修正
- Document Highlight
    - カーソル位置のトークンに対応するトークンのハイライト
- Document Symbol
    - クラスやメソッド定義の検出 (アウトラインや検索で利用)
- Selection Ranges
    - Expand SelectionやShrink Selectionで拡縮される範囲の最適化
- Others
    - Rubyを検出するパターンの調整 (ファイルパスや拡張子、ファイルの内容等)
    - 改行時のインデントルールの調整

この内、拡張内でRubyのパーサーが利用されているのは以下の3箇所です。これらの実装をPrismを利用するものに書き換えれば、tree-sitterからPrismへの移行完了です。

- Document Highlight
- Document Symbol
- Selection Ranges

## PrismとTree-sitterの比較

PrismはTree-sitterと比べてどうなのかという話ですが、Prismの方が良い体験を提供できると感じています。

いずれのパーサーを利用する場合でも、細かく手を加えていけば同様の処理を実現できるとは思います。それこそ、もし足りない部分があれば自前でパース処理を書けば良いですからね。そうなってくると、違いは実装コストに現れてきます。

比較してみると、Tree-sitterのASTは字句解析上の表現、要するにトークン列にフォーカスしたASTの構造になっているのに対して、PrismのASTは構文解析上の表現にフォーカスしたASTの構造になっているように感じます。例えば、Tree-sitterでは `end` キーワードをAST上で1つの `EndKeywordNode` として扱っている一方、Prismではメソッド定義を表す `DefNode` というノードの中に `end` キーワードの位置情報が含まれている、といった具合です。

この違いは、どういった部分で効いてくるでしょうか。

![](https://i.imgur.com/dJZJOtj.gif "Selection Rangesの利用例")

例えば、Language Server ProtocolにSelection Rangesという仕組みがあります。これは、現在のカーソル位置から選択範囲を広げようとしたときに、どんな範囲の候補を提示すべきかを返す仕組みです。この仕組みを利用すると、エディタがExpand SelectionやShrink Selectionといった機能を実現できます。

Selection Rangesに対応するためのLanguage Serverの内部実装としてはまず、与えられたソースコードとカーソルの位置情報を元に、カーソルに最も近い選択範囲の候補を見つけ、次にその範囲を内包する範囲を見つけ、更にその範囲を内包する範囲を見つけ……というように実装していきます。この実装において、選択範囲のデフォルトの候補としてAST上のノードを活用できます。エディタの利用者が選択したい範囲って、大体ASTのノードの単位ですからね。

勿論、「引用符の内側を選択したあと、次は引用符を含む範囲を選択したい」といったような、AST上のノードの単位だけでは表現できない選択範囲もあるので、それらについては都度別途実装が必要になります。しかし、基本的にはASTのノードを利用すれば上手くいく場合が多いです。このとき、ASTのノードの単位が構文上の意味的な単位で構成されておらずガタガタしていると、選択範囲の候補として利用するには不自然な場合が増え、都度実装が必要になっていきます。

PrismのASTは、こういった要件においてかなり自然に使える構造になっていたので、Tree-sitterと比べると実装が楽で、不具合が含まれる可能性も減るように感じました。

## まとめ

[vscode-ruby-light](https://github.com/r7kamura/vscode-ruby-light)で使っているRuby用パーサーを[tree-sitter-ruby](https://github.com/tree-sitter/tree-sitter-ruby)から[Prism](https://github.com/ruby/prism/tree/main)に移行したので、その過程で考えていたことについて書いてみました。

[Ruby Light - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=r7kamura.vscode-ruby-light)に移行後の新しいバージョンを公開したので、興味がある人は試してみてください。移行直後でまだ全然試験運用されていないので、かなり不具合があるとは思います。多分ちょっと複雑なRubyのプログラムを開いた瞬間、右下にポップアップが出て、そのワークスペースでは拡張が一旦停止されるでしょう。気付き次第、折を見て改善していく予定です。

そこまで難しい実装をしている訳ではないし、自分自身もTypeScriptもLSPもVSCodeもWASMもよく分からないまま雰囲気でやっている部分が多いので、何か開発に参加してみたいという人がいたら、是非手元で編集してPull Requestを送ってみてください。Mergeしたりしなかったりします。よろしくお願いします。
