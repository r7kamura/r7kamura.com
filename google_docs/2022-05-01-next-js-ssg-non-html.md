---
title: Next.jsでHTML以外の動的なSSG
---
Next.jsでnext exportを利用してSSGするとき、HTML以外のファイルも生成したくなるが、これは現状できないらしい。

例えば、次の場合にこういうことをしたくなる。

*   GET /feed.xml でRSSのためのXMLを返したい
*   GET /sitemap.txt でサイトマップのためにテキストを返したい

SSRであればAPI RoutesとRewrites、あるいはgetServerPropsが使えるのでこういうエンドポイントを用意できるが、SSGではこれらの機能はいずれも使えないので実現できない。

この問題に対して巷ではどんな回避策が取られているのかというと、次のような作戦が試みられているようだった。

*   next exportの直前に、publicディレクトリにファイルをつくる
*   適当なページのgetStaticPropsの中で、publicディレクトリにファイルをつくる

今回サイトマップを例に挙げたが、説明例としてはあまり良くない点がある。サイトマップの生成には、どんなページが存在するのかというメタデータがあると実装しやすいので、next buildとnext exportの間に処理を挟むことには幾らか妥当性がある。実際、サイトマップ生成によく利用される[next-sitemap](https://github.com/iamvishnusankar/next-sitemap)というパッケージもそういう作戦を取っている。なので、今回はRSSフィードの例を第一に考えるのが妥当かも。

もしNext.jsをこういう用途に対応させるなら、HTML以外を返すページを定義できるようにする、とかになるのだろうか。そうすれば、getStaticPathsとgetStaticPropsという仕組みを再利用できる。API RoutesをSSGに対応させることについても少し考えてみたが、API Routesは引数にrequestとresponseを取る形式になっているから、SSGではリクエストやレスポンスという概念が登場しないように出来ているので、この方向性は具合が悪そうに思う。
