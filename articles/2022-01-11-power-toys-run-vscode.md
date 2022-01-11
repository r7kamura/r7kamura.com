---
title: PowerToys Run + VSCode
---

最近使ったVSCodeのワークスペースをPowerToys Runから開く機能が便利。

PowerToys Runは、Windows用のランチャーアプリ。Windows用の拡張機能集であるPowerToysに含まれている。以前 『[PowerToysで豪遊](/articles/2020-09-28-power-toys)』という記事を書いたりもした。

最近このPowerToys RunにVSCode連携機能が付いて、これを有効化して例えば "rails" と入力すると、最近利用したVSCodeのワークスペースの中で "rails" を含むものを候補として出してくれるようになった。WSLやSSHで接続するワークスペースもしっかり含めてくれるのが良い。

![](https://i.imgur.com/x93x5vTh.png)

自分はこれまでVSCodeでワークスペースを開くために、まずWindows Terminalを開いてプロジェクトのディレクトリまで (pecoとかghqとかで) 移動して、そこから `code .` でVSCodeを起動して‥ということを手癖でやっていて、しかも作業中はVSCodeのターミナルを使ったりWindows Terminalを使ったりと、かなり曖昧な状態だった。PowerToys RunからVSCodeを開くようになったおかげで、基本的にWindows Terminalを開く必要がなくなり、統一されてHappy。配信するときも1アプリケーションに閉じてる方が楽だね。

ところで、VSCodeのターミナルを利用していると、ワークスペースを開き直すたびに毎度新しいシェルのプロセスを用意してしまい、古いプロセスが残り続けてしまう点は少し気になっている。ローカルにサーバーを建てたりしたいときは、workaroundとして、後から管理用途でアタッチするためにtmuxを介して実行している。
