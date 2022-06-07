---
title: Sevencop/RedundantExistenceCheck
---

気軽なカスタムCopの置き場として[sevencop](https://github.com/r7kamura/sevencop)というライブラリをつくり、第一弾として `Sevencop/RedundantExistenceCheck` というCopを用意した。カスタムCopを書くのは難しいことではないが、ライブラリとして提供しようとすると環境を用意するのが大変だったりするので、こういう実験的な場所があると手軽に試せて便利だ。

```ruby
# bad
FileUtils.rm(a) if File.exist?(a)

# good
FileUtils.rm(a, force: true)
```

`Sevencop/RedundantExistenceCheck` は、ファイルの存在を確認してから消すという処理を、確認せずに黙って消すようにするCop。お察しの通り、偽陽性のあるUnsafeなCopである。[実装](https://github.com/r7kamura/sevencop/blob/96acb9033b02e981328200ce8d29f9a8b6c74641/lib/rubocop/cop/sevencop/redundant_existence_check.rb)や[テスト](https://github.com/r7kamura/sevencop/blob/96acb9033b02e981328200ce8d29f9a8b6c74641/spec/rubocop/cop/rails_deprecation/redundant_existence_check_spec.rb)を見れば、どう動くか分かると思うが、わざわざ見る人は居ないと思うので、ここで簡単に説明する。

上記のように、`force` オプションに対応しているものについては `force: true`を付けた形に変更する。`rm` には `rm_f` という亜種があるが、一貫性を考慮してここではあえてオプションを付ける形を選択した。亜種を優先したい人は、別途オプション有り版をオプション無し版に書き換えるCopを使うべきだろう。

```ruby
# bad
FileUtils.mkdir(a) unless File.exist?(a)

# good
FileUtils.mkdir_p(a)
```

無ければつくる版。`FileUtils.mkdir` には適当なオプションが無いので、`mkdir_p` に書き換える作戦を取った。

```ruby
# bad
File.delete(a) if File.exist?(a)

# good
FileUtils.rm_f(a)
```

`File.delete` も適切なオプションが無いので、`FileUtils.rm_f` に書き換える作戦を取った。このケースでは `rm(a, force: true)` ではなく `rm_f(a)` を優先する。

```ruby
# bad
FileUtils.rm(a, force: true) if File.exist?(a)

# good
FileUtils.rm(a, force: true)
```

最初から `force: true` が付いている場合はそこには手を付けない。

```ruby
# bad
FileUtils.mkdir(a, verbose: true) unless File.exist?(a)

# good
FileUtils.mkdir_p(a, verbose: true)
```

`verbose: true` など他のオプションが付いている場合は引き継ぐ。

```ruby
# bad
FileUtils.mkdir(a) unless FileTest.exist?(a)

# good
FileUtils.mkdir_p(a)
```

`FileTest.exist?` にも対応している。`file?` や `directory?` などには、判断が難しいので今のところ対応していない。元々アグレッシブ気味な性格のCopであり、Unsafeだというフラグを立てているので、対応しても良いのかもしれないが。

簡単に対応できそうなのに対応できていないケースや、その他もっとこうした方が良いなどの意見があれば、気軽にPull Requestを送ってください。

## まとめ

- 気軽なカスタムCop置き場として[sevencop](https://github.com/r7kamura/sevencop)をつくった
- 第一弾として `Sevencop/RedundantExistenceCheck` を用意した
