---
date: 2017-05-30T05:39:53.532Z
from: medium
title: "『Writing An Interpreter In Go』を読んだ"
---

![](https://cdn-images-1.medium.com/max/800/1*kViBH2KLQQEtlok5JO8QkA.png)

Go の教材として使うという目論見は失敗したけど、プログラミング言語実装の仕組みを学ぶには、丁度良い難易度と分量の本だった。

## 内容紹介

[**Writing An Interpreter In Go (English Edition)**  
_In this book we will create a programming language together. We'll start with 0 lines of code and end up with a fully…_amzn.to](http://amzn.to/2s8jLc9 "http://amzn.to/2s8jLc9")[](http://amzn.to/2s8jLc9)

全部で4章の構成になっていて、1章で Lexer、2章で Parser、3章で Evaluator をつくろうという構成。3章までで一旦完成させて、4章では更に言語を拡張していく方法を学べる。

ここでの Lexer というのは、ただの文字列であるコードをトークンという単位ごとに分割して、トークン列をつくる処理。Parser は、このトークン列を抽象構文木と呼ばれる木構造に変換する処理。Evaluator は、この抽象構文木を評価して、コードの意味している処理を実際に行う処理となっている。

インタプリタに関する知識は本の中できちんと紹介されるので、この辺りで特に前提知識が求められるということがなく、簡単で良い。Go に関してはほとんど説明されないものの、他のプログラミング言語を習得している人であれば問題が無いレベルだと感じた。

## 良かったところ・悪かったところ

この本では、Parser の部分も yacc のような Parser Generator を使わずに自前で実装する方法を取っていて、抽象構文木を組み立てていく過程を体験できたのが良かった。

また個人的に面白いなと思ったのは、関数で出てくる return 文とエラーハンドリングのところ。これらが大体同じような仕組みで実現できることを、実装の過程で自分で確かめられたところが良かった。

他に、変数を実現するにあたって変数名を解決する仕組みが必要になり、そこに関数が登場することで結果的に Closure (閉包) の実現方法が説明される、という流れはとても分かりやすい説明だったと思う。

最初は Go の勉強目的で読もうと思っていたものの、この目論見は失敗に終わった。Go だからこそ出来るような特別な機能は使わずに実装されているので、Go について知識が無くても理解できるようになっている反面、これを読んでも Go の知識は得られにくかった。

## 試しに Markdown パーサをつくってみた

折角なので、勉強したことを使って簡単な Markdown パーサのプロトタイプをつくってみた。社内の勉強会の30分前につくりはじめたので、Go ではなく Ruby で実装してしまった。ほとんど機能も無いけれど、Tokenizer、Parser、Evaluator (Renderer) という構造は踏襲できているはず…。

[**r7kamura/rdown**  
_rdown - A toy Markdown-like language parser implementation in Ruby._github.com](https://github.com/r7kamura/rdown "https://github.com/r7kamura/rdown")[](https://github.com/r7kamura/rdown)

今更 Markdown パーサかと思われるかもしれないけれど、まだまだ欲しい機能が沢山ある。例えば、共同編集可能な Markdown エディタを提供するサービスをつくるとすると、Markdown のための AST を用意して、それぞれのノードに位置情報を付けて、どの部分を誰がいつ変更したかをバージョン管理したり、特定の部分をハイライトしてコメントを付けられるような機能を提供したりということが可能だし、Markdown 用の AST を表す言語非依存な形式を定めれば、仕様だけでなく実装の知識も共有できるようになったりするはず。

## まとめ

まだまだ簡単な言語しか実装できない状態だけど、全く分からないという状況から比べるとだいぶ状況が良くなったと思う。試しに Markdown パーサを書いてみることで、役に立つ知識が身に付いてきていることを実感できたし、良い体験だった。
