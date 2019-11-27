---
title: 凍結された文字列リテラルとltsv gem
---

https://github.com/condor/ltsv/pull/7 の話です。

## Object#freeze

Ruby にはオブジェクト自身の破壊的な変更を禁止するために Object#freeze というメソッドが用意されています。例えば String#gsub!(pattern, replace) というメソッドでは、文字列中で pattern にマッチする部分全てを文字列 replace に破壊的に置き換えます。もし freeze されている String のインスタンスに gsub! を呼び出すと、FrozenError (あるいは Ruby のバージョンによっては RuntimeError) が発生します。

## 文字列リテラルと freeze

現状リリースされているバージョンの Ruby では、コード中に文字列リテラルを記述すると、freeze されていないオブジェクトが生成されます。文字列リテラルと freeze に関係する話について、この機会に少し整理しておきましょう。

Ruby 2.1 から、文字列リテラルで生成したオブジェクトに対して直後に freeze が呼び出されている ("...".freeze のように記述されている) 場合、内部的にそれ用の最適化が行われ、同じオブジェクトが使い回されるようになりました (少し語弊がありますが大体そういう感じです)。また Ruby 2.3 より、マジックコメントとしてソースコード冒頭に # frozen_string_literal: true と記述しておくことで、そのファイル内に記述される文字列リテラルが freeze されたオブジェクトを生成するべく指定できるようになりました。そして Ruby 3 からは、文字列リテラルから生成されるオブジェクトはデフォルトで freeze された状態になる方針が決定されているようです。

## Rails 5.2.0 と frozen_string_literal: true

Rails 5.2.0 より、各ファイルの冒頭に # frozen_string_literal: true のマジックコメントが追加されるようになりました。

Rails には ActiveSupport::TimeWithZone というタイムゾーン付きの日時を表すための Time と似たクラスがあります。この中で、ActiveSupport::TimeWithZone#to_s の実装は、特にフォーマットが指定されていない限り、変数展開を利用した文字列リテラルで生成した String のインスタンスを返すようになっています。

結果的に、前述したマジックコメントの効果により、Rails 5.2.0 以降では ActiveSupport::TimeWithZone#to_s が freeze された String のインスタンスを返すように変更されています。これは Time.current.to_s.frozen? のようなコードで確認できます。

## ltsv gem と String#gsub!

さて、自分はたまたま ltsv という gem を利用しているアプリケーションの Rails のバージョンを上げる機会がありました。ltsv というのは、Labeled Tab-selarated Values の略で、要するに名前と値をコロンで繋げた組をタブ文字区切りで結合したテキストのフォーマット仕様のことで、ltsv gem はその形式に合わせてオブジェクトをエンコードあるいはデコードするためのライブラリです。

このアプリケーションの中では、現在日時と共に処理の内容を LTSV 形式で記録しておく処理が含まれていたのですが、現在日時を求めるのに Time.current が利用されており、なおかつ ltsv gem のエンコーダーは入力された値に to_s を呼び出した上で String#gsub! で破壊的に変更するような実装になっていました。結果的に、Rails 5.2.0 以降では freeze された String のインスタンスに対して String#gsub! を呼び出して例外が発生するようになってしまっていました。

この問題への対応として、以下の Pull Request をつくりました。要は String#gsub! の代わりに String#gsub を利用しても構わない箇所だろうということで、単純に String#gsub に置き換えることにしました。

https://github.com/condor/ltsv/pull/7

当時最新のバージョンであった ltsv 0.1.0 がリリースされたのは2013年のことで、「最新の変更を含んだ 0.1.1 はいつリリースされるんだ？」という Issue が立っている状態だったので若干不安がありましたが、この Pull Request は当日中にすぐに merge していただけて、ltsv 0.1.2 からはこの変更が含まれるようになりました。Pull Request を出して良かったと思います。

## おわり

以上、Ruby の凍結された文字列リテラルと ltsv gem についての話でした。
