---
title: RuboCop Problem Matchers
---

[RuboCop Problem Matchers](https://github.com/marketplace/actions/rubocop-problem-matchers)というGitHub Actionをつくった。

## 使い方

GitHub ActionsでRuboCopを実行する前にこれを呼び出しておくと、違反内容が変更差分に注釈として表示されるようになる。

こういう感じで使う。

```yaml
- uses: r7kamura/rubocop-problem-matchers-action@v1
- run: bundle exec rubocop
```

こういう感じで表示される。

![](https://i.imgur.com/AAjpgpih.png "変更差分に違反内容が表示されている様子")

GitHubの[Problem Matchers](https://github.com/actions/toolkit/blob/1cc56db0ff126f4d65aeb83798852e02a2c180c3/docs/problem-matchers.md)という仕組みを利用している。

## 注意点

このような目的でGitHub Actionsを利用するときの注意点に触れておく。

`pull_request` イベントを起点に動かす場合、`actions/checkout` はそのPull Requestが生成しようとしているmerge commitをチェックアウトする。これだとLinter等から報告されるコードの位置がPull Requestの差分で表示しているものとズレてしまう場合があるので、この用途で使う場合はPull RequestのHEADをチェックアウトするように設定した方が良い。

```yaml
- uses: actions/checkout@v2
  with:
    ref: ${{ github.event.pull_request.head.sha }}
```

ちなみに、このように指定しても `push` 契機での実行時にも特に問題無く動いてくれるので、その点は心配無い。

---

今回取り上げたRuboCop Problem Matchersのような、Problem Matchersを利用したものをつくる開発者向けに細かい情報を書いておく。

## エスケープシーケンス

GitHub ActionsではANSIエスケープシーケンスを利用した出力を行うと、ウェブブラウザ上で表示する際にもよしなに修飾されて表示される。このような太字や着色などの修飾付きの出力に対して正規表現を書く場合には、エスケープシーケンスを考慮したパターンを記述しないと上手くいかないので、注意が必要だ。

RuboCop Problem Matchersでは、対応も面倒そうなので色付きの出力 (`rubocop --color`) にはとりあえず未対応としている。

## Severity

Problem Matchersではseverityという情報をキャプチャすることも出来るが、これは少なくともGitHub ChecksとGitHub Actionsの出力ログのところで黄色く表示されるか赤く表示されるかという違いに影響している。少なくとも `"warning"` のときに黄色くなり、それ以外の文字列に対しては基本的に `"error"` 相当で赤くなるということが分かった。

RuboCopの違反には出力で言うと `W` と `C` の2パターンがあるので、RuboCop Problem Matchersではそれぞれwarningとerrorに割り当てている。[ソースコード](https://github.com/r7kamura/rubocop-problem-matchers-action/blob/b8ef1656b34a223cf80f04e6b45b5bb6722cef31/.github/matchers/rubocop.json)を見ると分かるが、このために2つのMatcherを用意している。それぞれのMatcherに異なる名前を割り当てており、名前を指定して特定のMatcherを無効化する機能もあるので、利用者側で警告だけ非表示にするなどの用途も考えられる。
