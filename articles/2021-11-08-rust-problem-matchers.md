---
title: Rust Problem Matchers
---

Rust Problem MatchersというGitHub Actionをつくった。

- <https://github.com/marketplace/actions/rust-problem-matchers>

GitHub ActionsのJobで事前にこれを実行しておくと、Rustにまつわるプログラムを実行するときに、エラーや警告の発生した場所を拾ってGitHub Checksで注釈してくれるようになる、というもの。

[RuboCop Problem Matchers](https://github.com/marketplace/actions/rubocop-problem-matchers)というGitHub Actionを以前つくったことがあるので、今回はこれをRustのために焼き直しただけ。Problem Matchersというのは人間用の出力を正規表現で良い感じにキャプチャするというものなので、対象の出力の性格に合わせて幾らか考慮しなければいけない点がある。逆に言うと、こういうプログラムをつくるときは人にとっても機械にとっても良い感じの出力ができるように考慮した方が、良い結果を生みやすいので、エラーの出力形式なんかを考えるときにはこういう点も参考にしなければ。

今回はrustfmtというやつの出力を解析しようと試みたのだが、これはgit-diffのように (恐らく) Unified Formatな形式で変更箇所付近の差分を出力するため、今回のGitHub Actionでは素朴に実装した結果、実際に問題のあった箇所の数行手前の箇所が報告されてしまうという問題を抱えている。正規表現による解析をもう少し頑張っても良いのだけど、rustfmtのJSON形式の出力を利用して、Problem Matchersのために整形するフォーマッターを用意した方が筋が良いかもしれないな、と考えている。とはいえ、特に (フォーマッター変更などの) 追加の設定無しで導入できるという点は捨てがたいし、悩ましいところ。

1つのエラーに対して複数行の出力がなされる場合の対処方法については、次のIssueが参考になるかもしれない。

- <https://github.com/actions/toolkit/issues/193>
