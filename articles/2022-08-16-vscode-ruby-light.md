---
title: 'Ruby用VSCode拡張: vscode-ruby-light'
---
Ruby向けに、[vscode-ruby-light](https://marketplace.visualstudio.com/items?itemName=r7kamura.vscode-ruby-light)というVSCode拡張をつくっています。この拡張は、利用者に特にRubyのインストール要求することなく、シンタックスハイライトやカーソル操作など、VSCode標準の機能よりちょっと良い編集体験を提供しようという目的の拡張です。

最初は「メソッドやブロックをもう少し上手く選択できるようにしたい」というモチベーションで調べ始めたのですが、気付けば色々な機能を持つVSCode拡張が出来上がっていました。この記事では、幾つかの機能を紹介しながら、関連する話を書いていこうと思います。

![](https://i.imgur.com/Mu4u3VP.gif "Selection Range")

VSCodeにはExpand Selectionというコマンドがあり、選択範囲を拡大したり狭くしたりできます。このコマンドには、例えばWindowsであればデフォルトでShift + Alt + →にショートカットキーが割り当てられています。

この拡張では、ソースコードの構文を解析し、このとき選択される範囲を適切に割り当てています。上の画像では、括弧の内側と外側、メソッド呼び出し、ブロック、メソッド呼び出し、メソッド定義、と選択範囲が拡がっていく様子が分かるかと思います。改行が存在する場合、改行まで拡げるような選択範囲をVSCodeが勝手に挿入してくるので、それと合わさって上の画像のような挙動になっています。

![](https://i.imgur.com/bU9zPz6.gif "Document Highlight")

キーワードにマウスカーソルやテキストカーソルを載せたときに、対応するキーワード群を光らせるという機能が入っています。そこまで活用できる機会は多くありませんが、インデント等がぐちゃぐちゃになっている荒れたソースコードを触るときに便利なことがあります。足元灯のようなものです。

ここまで説明していませんでしたが、ソースコードの構文解析には[tree-sitter](https://tree-sitter.github.io/tree-sitter/)というパーサージェネレーターを使っています。JavaScriptで構文を定義し、C言語のソースコードにコンパイルできるというものです。成果物はRust crateやNPM package、WASMバイナリとして出力でき、この拡張ではRuby用パーサーのWASMバイナリを同梱し、VSCodeのJavaScript実行エンジンから読み込んで利用しています。

![](https://i.imgur.com/UEFPiuo.gif "Document Symbol")

クラスやメソッド定義をシンボルという単位で認識し、アウトラインとして表示したり、シンボルを検索できるようにしたりする機能を提供しています。クラス、モジュール、定数、インスタンスメソッド、特異メソッド、標準のattr\_x系のメソッド呼び出しに対応しています。

この機能を実装するまで、シンボル関係の機能を使うことは無かったのですが、使ってみると意外と便利でした。定義順序がバラバラだったりする巨大なRubyのファイルをざっと見通すときや、メソッド定義を検索したい場合なんかに便利です。なお、認識できるのは開いているファイルのシンボルだけで、プロジェクト全体のシンボルを検索できるような機能は今のところありません。全体を検索可能にするなら、YARD + riデータベース辺りを使うのが妥当そうな気がしていますが、どうなんでしょうね。

![](https://i.imgur.com/gbLIuft.gif "Diagnostics")

RuboCopが利用可能な場合、違反があれば表示するという機能も備えています。RuboCopが利用可能かどうかは、VSCodeで開いているWorkspaceの現在または祖先ディレクトリに.rubocop.ymlが存在するか、そしてrubocopコマンドが利用可能かどうかで判定しています。また、Gemfileが存在する場合はbundle exec rubocopコマンドを利用するようになっています。

VSCodeのこの機能は、Diagnosticsと呼びます。診断結果ということですね。各DiagnosticにはQuick Fixのようなコマンドも付与できる仕組みになっており、この拡張では、autocorrectできる違反の場合にはQuick Fixが表示されるようになっています。これを実行するとその違反が修正されます。

今のRuboCopには、「このCopの違反だけを修正する」という機能はあれど、「この違反を修正する」という機能は存在しません。そこで、ファイル全体に「このCopの違反だけを修正する」という変更を一時的に掛けて、変更前後の差分を比較して適当な変更だけを加えるという工夫をしています。単純な修正だとこれで問題ありませんが、順序を並べ替えるようなタイプの、違反位置と変更位置が離れている類の修正だと失敗してしまうことが分かっています。RuboCopに対して、この手の問題を解決できるようなPull Requestを出そうと考えています。

![](https://i.imgur.com/R8et1Nc.gif "Document Formatting")

勿論Quick Fixだけでなく、ファイル全体や選択範囲に対するフォーマット機能としてRuboCopを使えるようにもなっています。Format On Saveにも対応しているので、設定で有効化すれば保存時に自動的にautocorrectしてくれるようになります。

![](https://i.imgur.com/692mNbM.png)

人によってはDiagnosticsの表示が鬱陶しかったりすると思うので、設定で個々の機能を無効化できるようにもなっています。

VSCode拡張には、設定で無効化できる機能と無効化できない機能が存在します。ここまで紹介したものは、すべて無効化できるものです。無効化できないものというのは、例えばTextMate記法を利用したシンタックス定義や、Language Configurationという仕組みで設定するものなどが挙げられます。

![](https://i.imgur.com/tVH3Z98.gif "Language Configuration")

これはLanguage Configurationで設定している機能の一例で、改行時のインデントの挙動が調整されています。単純なifなどの後の改行時はそのままインデントを深くしたままにしてほしい訳ですが、演算子の後の改行時は一行だけインデントを深くして、その後は元のインデントに戻ってほしいですよね。このような挙動を、VSCode拡張ではJSONによる定義で設定できます。

他にJSONで設定できるものとして、どのようなファイルをRubyとして認識するかや、前述したTextMate記法によるシンタックスハイライトのルールなどが挙げられます。現在のVSCode標準のRuby向けシンタックスハイライトのルールは、ヒアドキュメントやリテラル周りのパースに失敗することがあり、幾らか改善の余地があるので、将来この拡張でもより改善されたルールを提供しようと考えています。

* * *

以上です。vscode-ruby-lightというRuby向けのVSCode拡張をつくっている話をしました。VSCodeでRubyを書いている人は、ぜひ試してみてください。

この拡張はVisual Studio Marketplaceで公開されており、[Ruby Light - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=r7kamura.vscode-ruby-light)からインストールできます。あるいは、VSCodeの拡張管理パネルから“ruby light” で検索してインストールしても良いでしょう。ソースコードは、GitHubの[r7kamura/vscode-ruby-light](https://github.com/r7kamura/vscode-ruby-light)リポジトリで公開しています。
