---
title: rubocop-junit_formatterを導入した
---

## CircleCI のメタデータ

CircleCI では、テスト実行後にメタデータを送信しておくと色々と便宜を図ってくれる機能があります。

<https://circleci.com/docs/2.0/collect-test-data/>

## rubocop-junit_formatter

rspec_junit_formatter を使うことで RSpec の失敗件数などがテストサマリーとして表示されて便利なので、RuboCop でも同じようなことがしたいなと前々から思っていたんですが、rubocop-junit_formatter というのが既にありました。

rubocop-junit_formatter と rubocop-junit-formatter の2つがあるようですが、前者の方がメンテナンスされていて良さそうだったので、前者を使っています。

- <https://github.com/ngan/rubocop-junit_formatter>
- <https://github.com/mikian/rubocop-junit-formatter>

## 様子

こういう感じで失敗件数等が分かって便利。実行に時間が掛かったファイルや、ビルド間での統計的な情報も得られるようになるので、わりと重宝するのではないかと思っています。

![](https://i.imgur.com/bDuLxDYh.png)
