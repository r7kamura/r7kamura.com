---
title: ActionView::Resolver
---

ActionView::Resolverの実装を少しだけ読むことになったのでメモ。

読んだ理由は、Rails 6.1と7.0の間でここが大きく変更され、Rails 7.0化において動かなくなるアプリケーションを抱えていたため。

Railsは、app/views/home/index.html.erbのようなViewテンプレートを一体どう探索しているのか。それを司っている部分がActionView::Resolver。Rails 7.0ベースの話で言うと、テンプレートを絞り込むにあたり3段階ほどの絞り込みのロジックがあるように捉えている。

1. `"#{prefix}/#{action}*"` のようなGlobパターンからテンプレート候補を取得する
2. テンプレート候補のうち、要求されていものとvirtual pathが同一のものだけ絞り込む
3. テンプレート候補のうち、要求されていものとdetailsが一致するものだけ絞り込む

例えば、jpmobile gemでは独自のResolverを用意して、app/views/home/index_smartphone.html.erbのようなViewテンプレートが探索されるように挙動を変えている。テンプレート候補それぞれに対して、正規表現を利用してファイルパスを細かい部品に分類する工程があるのだけど、jpmobile 7.0だとその正規表現に細工して `_smart_phone` の部分も受け入れられるようにしている。更にdetailsの比較処理にも細工して、この部分も含めて要求に一致するかどうか調べるように変えている。
