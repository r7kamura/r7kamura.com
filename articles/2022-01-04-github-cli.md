---
title: GitHub CLI
---

ここ1年ほどで、GitHub CLIをよく使うようになった。

- <https://github.com/cli/cli>
- <https://cli.github.com/>

特によく使うコマンドはこの辺（辞書順）。

```
gh pr create --draft --fill
gh pr create --web
gh pr merge --delete-branch --squash
gh pr view --web
gh repo view --web
gh run list
gh run watch
```

「CIを動かすためにPull Requestをとにかく早く建てたい」というときによく、CLIからdraft状態でPull Requestをつくる。それからCIを待っている間に、ゆっくりとdescriptionを埋める。あと数十秒で終わるようなCIを待って何かしたいときは、gh run watchで待ち状態にしておくことが多いが、最近はAuto-mergeを利用することも増えてきたので、こういうことをする機会は減ってきたかもしれない。

gh extensionで拡張拡張を他人と共有できたりするが、便利そうだと思う一方で特にまだ何も活用できたことはない。何かlife-changingな拡張機能があればあやかりたいものだ。

---

これはGitHub CLIの話とは全くもって別の課題だが、あるPull RequestをMergeしたら次のPull Requestを出す、という作業が発生することがままある。主なねらいとしては、コンフリクトを避けたり、まともな差分を見てもらうためだが、しかしこうなると並行して作業ができないのでどうにかしたいと思っている。後者のPull Requestのマージ先をデフォルトブランチではなく前者のPull Requestのブランチにすると上手くいくかもしれないが、こうすると構造的には別の目的（後者をMergeしてから前者をMergeしたいのか？）と誤解されかねないので、何か違う気がする。

もっと具体的に言うと、前者 + 後者を混ぜた巨大な個人作業用Pull Requestを1個用意しておいて、そこでCIの様子を見て作業しながら、細かいPull Requestに切り出していくという作業をすることが非常に多いのだけど、何かもっと上手いことやれるような気がしているんだよな。
