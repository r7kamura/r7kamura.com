---
title: Chrome拡張 つくりかた 令和最新版
---
数年ぶりにChrome拡張のつくりかたを調べた。

本当に何も分からなかったので、Twitterで「2022年にChrome拡張つくりたかったら何見て学べばいい？」と[つぶやいてみた](https://twitter.com/r7kamura/status/1522696083109212160)ところ、何人かの人が教えてくれた。教えてもらった中から幾つかのリンク先を紹介するという形式で記述していく。

[Create a Vite-React Chrome Extension in 90 seconds - DEV Community](https://dev.to/jacksteamdev/create-a-vite-react-chrome-extension-in-90-seconds-3df7)
---------------------------------------------------------------------------------------------------------------------------------------------------------

2022年時点だと比較的新しめのフロントエンド向けツールである[vite](https://github.com/vitejs/vite)と、viteのChrome拡張向けプラグインである[@crxjs/vite-plugin](https://github.com/crxjs/rollup-plugin-chrome-extension)を使ってChrome拡張をつくってみよう、という記事。今回自分は主にこれを参考にしながら開発を進めた。Reactと言っているが、自分のChrome拡張ではUIは存在しなかったので、Reactに関する部分は読み飛ばして、viteの初期設定の様子だけ読んだ。かなり分かりやすいのでおすすめ。

[Getting started - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/getstarted/)
---------------------------------------------------------------------------------------------------

Chrome拡張公式のGetting Started。自分はmanifest v2時代の知識はあるものの、manifest v3時代の知識が無いので、当時の知識と照らし合わせながら、必要な設定を削り出すためのリファレンスとして読んだ。公式だし、読んでおいて損は無い。

[Chrome拡張機能をmanifest v3で開発した簡易記録とハマりポイントの解消方法 - 雑多に技術メモと他色々](https://yamakisso.hatenablog.com/entry/2022/02/23/080234)
----------------------------------------------------------------------------------------------------------------------

開発の中でハマった様子が仔細に記されている。意外とこういう泥臭い内容の情報が共有されることはないので、こういう記事があって良かった。基本的に人は上手くいった部分の情報しか共有しないから、こういう雰囲気の情報も読まないと、「他の人は全員上手くやれているのに、自分はこんなに問題にはまっていて、本当に情けない」という気持ちになってしまうことがあると思う。開発の大変さの規模感も大体分かって良い情報。

[とほほのChrome拡張機能開発入門 - とほほのWWW入門](https://www.tohoho-web.com/ex/chrome_extension.html)
-------------------------------------------------------------------------------------

とほほさんがChrome拡張の作り方を書いていてつい嬉しくなってしまった。かなりシンプルにまとまったChrome拡張の作り方の記事も書かれていて、分かりやすい。この前は[とほほの仏教入門](https://www.tohoho-web.com/ot/buddhism.html)を読ませてもらったが、とほほさんは本当に手広くやっていてすごい。

[r7kamura/copy-rich-link: Browser extension to copy the page title and URL as rich text.](https://github.com/r7kamura/copy-rich-link)
-------------------------------------------------------------------------------------------------------------------------------------

今回自分がつくったChrome拡張がこれ。いまはChromeウェブストアの審査待ち。npm init vite@latestで雛形を用意して、記事を見ながらmanifest.jsonを適当に書いて、クリップボードを使う数行のコードをmain.tsに書いただけという、至って素朴な出来になっていると思う。
