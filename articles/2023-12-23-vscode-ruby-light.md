---
title: vscode-ruby-light 開発日記
---

vscode-ruby-lightの開発中に考えたことを書いていきます。

## vscode-ruby-lightとは

1年ほど前に、[Ruby用VSCode拡張: vscode-ruby-light](https://r7kamura.com/articles/2022-08-16-vscode-ruby-light)という記事を書きました。要約すると、Rubyがインストールされていなくても使える、Rubyを書くのがちょっと便利になるVSCode拡張をつくってみているという話です。具体的には、シンタックスハイライトやトークンの選択など、VSCode標準の機能よりちょっと良い編集体験を提供しようという目的の拡張です。

あまり真面目に開発している訳ではなく、VSCode拡張やLSPについての勉強も兼ね、ちょっとした趣味プロジェクトとして開発したりしなかったりしているというのが実情です。開発自体は1年ほど停滞していたのですが、この1年でRubyのパーサーやVSCode拡張を取り巻く情勢にも大きく変化があったので、これを機にまたしばらく開発を進めてみています。

## Rubyのインストールの是非

上述のVSCode拡張をつくってみた後、Rubyを必要としないことを利点とするのであれば、もしRubyや関連Gemをインストールしてもらえる場合はどのぐらい良い編集体験を提供できるのか、またその場合の導入や運用はどの程度大変なのか、ということをよく検証する必要があると考えました。

そこで、新たに[rucoa](https://github.com/r7kamura/rucoa)というRuby用のLanguage Serverを提供するGemをつくり、[vscode-rucoa](https://github.com/r7kamura/vscode-rucoa)というVSCode拡張も用意して、Rubyを用いた開発現場で1年間ほど利用し、使い勝手を比較してみました。

結果を整理すると、Rubyをインストールしてもらう形式の拡張の場合、まず以下の利点があると感じました。

- Ruby製のパーサーを簡単に利用できるので、複雑な構文に対応できる
- RuboCopの実行時に、外部コマンド経由でなくRubyのAPI経由でやり取りできる
- 解析対象の言語で実装できるので、結果的に開発コストが低く済む

一方で、以下の欠点があると感じました。

- 導入に手間が掛かる
- 複数人で開発するプロジェクトで導入しづらい
- Dockerを利用した開発時に使いづらい

結論すると、やはりRubyをインストールしない形式の拡張にも大きな需要があると感じました。

## Ruby向けVSCode拡張を取り巻く環境の変化

この1年間ほどでRuby向けのVSCode拡張を取り巻くも幾らか変わりました。vscode-ruby-lightの開発に直接の関係はありませんが、いい機会なので、自分の知る限りの情報をここで紹介しておきたいと思います。

具体的に言うと、Ruby向けVSCode拡張としてデファクトスタンダードだった[vscode-ruby](https://github.com/rubyide/vscode-ruby)の開発が、元々それまでも停滞はしていたんですが、公式に完全停止されることとなり、リポジトリがアーカイブされ、マーケットプレイスにおいてもVSCode拡張に非推奨フラグが付くようになりました。

代わりに、Shopifyが開発する[vscode-ruby-lsp](https://github.com/Shopify/vscode-ruby-lsp)が台頭し、vscode-rubyにおいてはこちらへの移行が推奨されるようになりました。この拡張は、rucoaと同じく別のGemでLanguage Serverを提供する形式になっており、Rubyに加えて[ruby-lsp](https://github.com/Shopify/ruby-lsp)というGemをインストールする必要があります。

Shopifyと言えば、Rubyにおける3rd Party製の静的型検査器である[sorbet](https://github.com/sorbet/sorbet)を導入していることでも有名で、ruby-lspにも解析対象のコードでsorbetが利用されている場合に有利な機能が幾つか実装されていたり、またruby-lspの開発自体にもsorbetが利用されています。この辺りの話題には、もしかしたら幾らか駆け引きがあるのかもしれませんね。

他の話題として、[vscode-rdbg](https://github.com/ruby/vscode-rdbg)というものも登場し、便利な世の中になりました。Rubyの次世代デバッガー (要はブレイクポイントとかを設定したりできてちょっと豪華なデバッグができるやつ) として、[debug](https://github.com/ruby/debug)というGemがあるんですが、これをVSCodeから便利に使うためのVSCode拡張がvscode-rdbgという訳ですね。VSCodeはGUIから利用できるデバッグ機能を豊富に備えているので、これとdebug gemの機能を組み合わせることで、より便利にRubyのデバッグができるようになります。

## Prismの登場

Rubyのパーサーとして、新たに[Prism](https://github.com/ruby/prism) (旧名:YARP) が登場しました。CRubyの内部で使うパーサーがどうなっていくかは今後色々あると思うんですが、少なくともRuby 3.3では、RubyからPrismを呼ぶAPIが利用できるようになるみたいですね。

興味深い話として、Prismはいわゆるユニバーサルな使い方も意識してくれていて、WASM経由での利用方法も提供してくれています。これをVSCode拡張に利用できれば、Rubyを入れてもらわなくても複雑な構文に簡単に対応できるようになりそうです。

という訳で、vscode-ruby-lightでは現在、内部で利用するパーサーをtree-sitter-rubyからPrismに変更するという活動を進めてみています。自分自身、WASM自体への知識やNode.jsからWASMを利用する方法なんかについての知識がまだまだ乏しいので、なかなか大変そうな活動ではありますが、勉強しながら楽しく進めていこうと思います。

- [Migrate tree-sitter-ruby to prism by r7kamura · Pull Request #34 · r7kamura/vscode-ruby-light](https://github.com/r7kamura/vscode-ruby-light/pull/34)
