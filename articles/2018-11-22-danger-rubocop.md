---
title: danger-rubocopにオプションを追加した話
---

<https://github.com/ashfurrow/danger-rubocop#27> の話です。

## danger-rubocop

以前 <https://www.patreon.com/posts/danger-22714545> で danger-suggester の話をしましたが、これを記事の影響で仕事先のプロジェクトでも「danger-suggester を導入したいね」という話になり、「とりあえず現状動かしている RuboCop を danger-rubocop で代替してみよう」と話が進みました。

## danger-rubocop の問題

しかし単純に RuboCop を danger (with danger-rubocop) で置き換えたところ、2つの問題が見つかりました。1つは <https://www.patreon.com/posts/dangerdeinrainko-22832118> で書いた、インラインコメントが動かないケースがあるという問題でした。この問題は Danger に Pull Request を取り込んでもらえたことで解決済みです。
もう1つの問題（この記事で扱いたい問題）として、RuboCop で違反が見つかっても Danger 的には「違反」ではなく「警告」として扱うようになっているため、GitHub の CI status が failed にならないという問題がありました。

## 対応

CI をブロックしたくないユースケースと、自分のようにブロックしたいユースケースがあると思うので、fail_on_inline_comment というオプションを追加して、これを選択できるようにしてみた……というのが以下の Pull Request の内容です。

<https://github.com/ashfurrow/danger-rubocop/pull/27>

最初サボってテストを書かずに Pull Request を出してたんですが（そもそもの案として反対されると労力が無駄になるので…）、案の定テストを書いてくれという感じになったので、書きました。その後めでたくリリースされたので、fail_on_inline_comment オプションが v0.6.1 から利用可能になっています。
