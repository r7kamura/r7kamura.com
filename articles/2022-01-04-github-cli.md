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
