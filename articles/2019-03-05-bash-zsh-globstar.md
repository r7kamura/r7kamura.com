---
title: bashとzshとglobstar
---

久方ぶりの投稿となります。2月初旬に Apex Legends というバトルロイヤル形式のゲームが公開されて以来、どっぷりはまって気付けば3月になっていました。ひさしぶりに見たら Patreon のフォントが若干大きめに変更されていますね。

<https://www.ea.com/ja-jp/games/apex-legends>

さて、あまり大した話ではないんですが、昨日 CircleCI でシェルの globstar を利用しようとしてはまったのでその件について。というのも、`erblint app/views/**/*.erb` というコマンドを CircleCI で実行していたのですが、手元の環境と展開結果が異なるという問題にはまっていました。

## globstar

`**` だと検索しづらく、"globstar" という単語を見出すのに "shell double asterisk" 等で検索して苦労しました。

CircleCI では bash が利用されており、bash では明示的に shopt -s globstar が設定されていない限り、デフォルトでは `**` は `*` 相当に展開されます。一方自分の手元の環境では zsh が利用されており、デフォルトで `**` が0個以上のディレクトリに展開されます。結果、`app/views/**/*.erb` の展開結果に差異があり、erblint の対象にならないファイルが存在してしまっていた、という訳です。

## circleci tests glob

幸い、CircleCI では便利なユーティリティが提供されており、前述のコマンドを `erblint $(circleci tests glob "app/views/**/*.erb")` というコマンドで置き換えることで対応できました。

よく考えたら CircleCI のこのコマンドは、コンテナごとにテストを分割するときに使ったことがありました。

```
circleci tests glob "spec/**/*_spec.rb" | circleci tests split --split-by=timings
```

のように使っています。ここで circleci tests glob が必要になっている理由を考えると、そのままではシェルで `**` が動かないことはほぼ自明ですね…。
