---
title: eval_gemfile
---

ちょっとしたコード変更を紹介するシリーズ。

```diff
- instance_eval(
-   File.read('Gemfile')
- )
+ eval_gemfile('Gemfile')
```

Gemfileから別のGemfileを評価したいときに使えるメソッドとして、`eval_gemfile` ([Bundler::Dsl#eval_gemfile](https://github.com/rubygems/rubygems/blob/v3.3.15/bundler/lib/bundler/dsl.rb#L43-L58)) があったことを、他人のコードを読んでいて思い出した。結果的に、上記のように書き換えた。やっていることは大体同じだけど、異常系の考慮や相対パスの取り扱いなど細かなことをやってくれるし、DSLに入りてはDSLに従うべきだろうという考えの元で。

こういうきもい処理は、複数のGemfileを運用するとき場合などに出てくる。例えば、アプリケーションでRails 6と7との過渡期で並行運用するときや、ライブラリで複数のバージョンのGemをテストするときなど。
