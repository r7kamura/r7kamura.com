---
title: ActionView::Resolver
---

ActionView::Resolverの実装を少しだけ読むことになったのでメモ。

読んだ理由は、Rails 6.1と7.0の間でここが大きく変更され、Rails 7.0化において動かなくなるアプリケーションを抱えていたため。

Railsは、app/views/home/index.html.erbのようなViewテンプレートを一体どう探索しているのか。それを司っている部分がActionView::Resolver。例えばjpmobile gemでは独自のResolverを用意して、app/views/home/index_smartphone.html.erbのようなViewテンプレートが探索されるように挙動を変えている。

Rails 7.0の話で内部実装をざっくり説明すると、まず `home#index` でrenderするときは、`home/index*` のようなglobパターンを組み立てる。これを利用してapp/viewsのようなディレクトリを探索し、app/views/home/index.html.erbのような実在するファイルのパスを持ってくる (候補が何件か見つかる場合もある)。更に正規表現でこれらのパスを解析し、`home`, `index`, `html`, `erb` のような細かいパーツ (detailsと言う) に分解した上で、このパーツが要求と一致しているか (例: jsフォーマットのファイルが要求されていたらhtmlのやつは弾く) を調べ、最終的に一致するファイルパスを見つけ出すという感じ。
