---
title: RuboCop Problem Matchers
---

[RuboCop Problem Matchers](https://github.com/marketplace/actions/rubocop-problem-matchers)というGitHub Actionをつくった。

GitHub ActionsでRuboCopを実行する前にこれを呼び出しておくと、変更差分やGitHub Checksのところに違反内容が表示されるようになる。

こういう感じで使う。

```yaml
- uses: r7kamura/rubocop-problem-matchers-action@v1
- run: bundle exec rubocop
```

こういう感じで表示される。

![](https://i.imgur.com/AAjpgpih.png "変更差分に違反内容が表示されている様子")

GitHubの[Problem Matchers](https://github.com/actions/toolkit/blob/1cc56db0ff126f4d65aeb83798852e02a2c180c3/docs/problem-matchers.md)という仕組みを利用している。
