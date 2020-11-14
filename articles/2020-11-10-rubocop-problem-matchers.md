---
title: RuboCop Problem Matchers
---

[RuboCop Problem Matchers](https://github.com/marketplace/actions/rubocop-problem-matchers)というGitHub Actionをつくった。

GitHub ActionsでRuboCopを実行する前にこれを呼び出しておくと、違反内容が変更差分に注釈として表示されるようになる。

こういう感じで使う。

```yaml
- uses: r7kamura/rubocop-problem-matchers-action@v1
- run: bundle exec rubocop
```

こういう感じで表示される。

![](https://i.imgur.com/AAjpgpih.png "変更差分に違反内容が表示されている様子")

GitHubの[Problem Matchers](https://github.com/actions/toolkit/blob/1cc56db0ff126f4d65aeb83798852e02a2c180c3/docs/problem-matchers.md)という仕組みを利用している。

---

このような目的でGitHub Actionsを利用するときの注意点に触れておく。

`pull_request` イベントを起点に動かす場合、`actions/checkout` はそのPull Requestが生成しようとしているmerge commitをチェックアウトする。これだとLinter等から報告されるコードの位置がPull Requestの差分で表示しているものとズレてしまう場合があるので、この用途で使う場合はPull RequestのHEADをチェックアウトするように設定した方が良い。

```yaml
- uses: actions/checkout@v2
  with:
    ref: ${{ github.event.pull_request.head.sha }}
```

ちなみに、このように指定しても `push` 契機での実行時にも特に問題無く動いてくれるので、その点は心配無い。
