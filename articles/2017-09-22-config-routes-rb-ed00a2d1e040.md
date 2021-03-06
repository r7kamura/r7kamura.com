---
date: 2017-09-22T15:57:56.146Z
from: medium
title: "config/routes.rb の書き方を見直した"
---

開発を手伝っている Rails アプリの config/routes.rb の書き方を見直した。

## ルール

以下のようなガイドラインを設け、これを守るように書き換えた。

- resource(s) などの DSL の利用を避ける
- パスの辞書順に定義する

## 具体例

こういう形の、素朴なルーティングがひたすらに羅列されていくコードになる。実際のコードでは数百行以上に及ぶ。基本的に1行に1つのルーティングが定義される。

```
MyApp::Application.routes.draw do
  get    '/', to: 'top_pages#show', as: :top_page
  delete '/api/applications/:application_id', to: 'api_applications#destroy', as: :api_application
  get    '/api/applications/:application_id', to: 'api_applications#show'
  patch  '/api/applications/:application_id', to: 'api_applications#update'
  ...
end
```

## 背景

「resource(s) などの DSL を避ける」というのは、Rails が DSL として用意している `#resource` や `#resources` や `#namespace` などを利用せず、代わりに `#get` や `#post` などの比較的素朴なメソッドを利用してルーティングを実現しようという話である。

`#resource` などの DSL を使わないことで、近しい概念から発生するルーティング同士の関係性をコード上で表現することはできなくなり、どういったリソースの関係性の元にそのルーティングが成り立っているかということはもはや表現されなくなり、ルーティング間には一部に重複した部分が存在するようになってしまう。

しかしながら、今回携わっているプロジェクトではもはやそういった恩恵を享けるためにこれらの DSL を利用しているとは到底言い難く、徒にコードを理解するための学習コストを高めるばかりという状況だったため、今回の変更を加えた。

「パスの辞書順に定義する」というのは、誰が書いても同じコードになるようにするためのルール。「誰が書いても同じコードになるようにする」という部分について、決まりに縛り付けられて息苦しく感じたり、独創性を発揮する余地がなくなってしまったりという、ネガティブな雰囲気が感じられるかもしれない。しかし、コードを書くときの意思決定に必要な思考リソースを省くことができ、何も考えなくても書くべきコードが決定される、というようなポジティブな気持ちで捉えてほしいと思っている。こんなところで無駄に独創性を発揮してしまうよりは、思考リソースを温存しておいて、もっと他のところで発揮した方が良い。

## 変更時の動作検証

実際に変更を加える際には、変更前と変更後で挙動に違いが出ないことを保証する仕組みを用意するべき。自分の場合は、全てのルーティングに対してそれぞれ一つ以上は routing-specs を書いておき、更に rake routes の出力結果に差分が生じないことを確かめながら変更を加えた。まず routing-specs を追加して CI を通し、同じテストが存在する状態で routes.rb を変更して同じく CI を通すという感じ。

すごくショボいことを言っているようだけど、この辺さぼってデプロイした結果変更作業中に別のコードが master に入っていたのを知らなかったみたいな理由でアプリケーションが壊れがちで、当たり前のことでも十分に気を付けるべき。

## 雑感

ルータは Web アプリのエントリポイントとでも言うべき重要な部品なので、この Rails アプリに携わる全員がベテランの Rails 経験者である、みたいな状況でもない限り、幾らかの利益を我慢してでも、素朴で読みやすいコードに留めておく方がメリットが大きいと思う。

ところでルーティング定義が十分に単純化したことで、クライアントサイドとルーティング定義を共通化するような案も出てきたので、一度試してみたいと思っている。ルーティング定義が JSON などで表現できる程度に単純であれば、Rails アプリからルーティング定義を生成してクライアントサイドの実装に利用するのではなくて、ルーティング定義からサーバサイドとクライアントサイドのルーティング定義をそれぞれ生成するということも出来そうな気がしている。
