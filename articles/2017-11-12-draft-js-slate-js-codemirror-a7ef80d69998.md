---
date: 2017-11-12T16:21:24.608Z
from: medium
title: "Draft.js と Slate.js と CodeMirror の感想"
---

幾つかの Web サービスや Electron ベースのアプリに組み込むエディタを実装するにあたって、Draft.js、Slate.js、CodeMirror を試してきて得た情報について、個人の感想を述べる。今更感があるので、ライブラリそのものについての解説はしない。

## Draft.js

冒頭で挙げている三つのライブラリの中では、単純に Server-Side Rendering してもエラーを出さず、普通に動くところが良かった。単純に動かないタイプのライブラリでは、例えば React ではライフサイクルイベントのコールバックである ComponentDidMount メソッドを利用するなどして、クライアントサイドのみでエディタが描画されるように工夫しなければならない。

Draft.js でエディタのスタイルを変更するには、Decorator という、描画前の内部データを DOM 要素へと変換する変換器を与えられる仕組みを利用する。内部データは Immutable.js を利用しており、控えめに言ってもかなり複雑な構造になっているため、これを利用してスタイルを修飾するのはかなり骨が折れる作業になる。

Decorator は最大でも Block と呼ばれる単位ごとの変換しか行えないが、これはエディタ内での論理的な一行を表す単位であるため、コードブロックや引用文などの、複数行にまたがる構造に対して上手くスタイルを与えるのが難しい。

[**facebook/draft-js**  
_draft-js - A React framework for building text editors._github.com](https://github.com/facebook/draft-js "https://github.com/facebook/draft-js")[](https://github.com/facebook/draft-js)

## Slate.js

Draft.js を参考につくったと言っている後発のライブラリで、データ構造の複雑さがより緩和されている印象がある。Slate.js にも同じく Decorator の仕組みがあるが、実感としても Slate.js の Decorator の方がかなり書きやすく感じた。

Draft.js の Decorator と同じように、行単位での修飾しか行えない。また、V8 エンジン実装で Server-Side Rendering を行おうとすると、ライブラリを読み込もうとした段階でエラーが発生するため、前述したように適当な方法でクライアントサイドのみで読み込むように対策する必要がある。

個人的な意見になるが、要件的に Slate.js で済むなら、Draft.js より Slate.js を使いたいと考えている。なぜなら Draft.js の内部実装と格闘する日々に、出来ることならもう二度と戻りたくないから。

[**ianstormtaylor/slate**  
_slate - A completely customizable framework for building rich text editors._github.com](https://github.com/ianstormtaylor/slate "https://github.com/ianstormtaylor/slate")[](https://github.com/ianstormtaylor/slate)

## CodeMirror

エディタライブラリとしては完全に枯れているが、いろいろな部分で小回りが効くので、結局ほとんどのサービスで CodeMirror を採用している。

React コンポーネントとして利用するためのラッパーが有志によって積極的に開発されている。react-codemirror が主流だったが、最近開発が滞っており、更に react-codemirror2 が開発されている。この記事の執筆時点で、いま使うなら react-codemirror2 を選ぶほうが良い。

react-codemirror2 の提供する Component を使う場合、一応 Server-Side Rendering でも動作するが、何か文字を入力するまでシンタックスハイライトされなかったり、アドオンが動作しない条件があったりと微妙に動かない部分がある (もしかしたら微妙すぎて気付かないかもしれない) ので、クライアントサイドのみで mount するようにした方が良い。require 自体は V8 エンジン実装のような環境で行っても特に問題は無い。

シンタックスハイライトは素朴に正規表現で全体的に処理するタイプの実装なので、文章量が増えると処理が重くなるという問題はあるが、複数行にまたがるコードブロックや引用に対してもきちんと動作するし、ライブラリ側が機能を提供しているので自分で Prism.js などを利用して実装する必要もない。

[**codemirror/CodeMirror**  
_CodeMirror - In-browser code editor_github.com](https://github.com/codemirror/CodeMirror "https://github.com/codemirror/CodeMirror")[](https://github.com/codemirror/CodeMirror)

[**scniro/react-codemirror2**  
_react-codemirror2 - Codemirror integrated components for React_github.com](https://github.com/scniro/react-codemirror2 "https://github.com/scniro/react-codemirror2")[](https://github.com/scniro/react-codemirror2)

## その他

TinyMCE や ProseMirror も試したことがあるものの、いろいろな要件で結局プロダクトでは採用しないことが多かった。ライブラリの比較検討のためにこのページを見ている人がいるかもしれないので、一応リンクだけ貼っておくことにする。

[**tinymce/tinymce**  
_tinymce - The world's most popular JavaScript library for rich text editing_github.com](https://github.com/tinymce/tinymce "https://github.com/tinymce/tinymce")[](https://github.com/tinymce/tinymce)

[**ProseMirror/prosemirror**  
_prosemirror - The ProseMirror WYSIWYM editor_github.com](https://github.com/ProseMirror/prosemirror "https://github.com/ProseMirror/prosemirror")[](https://github.com/ProseMirror/prosemirror)
