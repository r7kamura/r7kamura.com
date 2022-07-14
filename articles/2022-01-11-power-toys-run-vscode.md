---
title: 最近開いたVSCodeのワークスペースを検索して開く
---

最近開いたVSCodeのワークスペースを、ランチャーからインクリメンタル検索して開くと便利だという話。

WindowsならPowerToys Runで、MacならAlfredの拡張機能で実現できる。例えば "rails" と入力すると、最近利用したVSCodeのワークスペースの中で "rails" を含むものを候補として出してくれる。WSLやSSHで接続するワークスペースもしっかり含めてくれる。

![](https://i.imgur.com/x93x5vTh.png)

自分はこれまでVSCodeでワークスペースを開くために、まずWindows Terminalを開いてプロジェクトのディレクトリまで (pecoとかghqとかで) 移動して、そこから `code .` でVSCodeを起動して‥ということを手癖でやっていて、しかも作業中はVSCodeのターミナルを使ったりWindows Terminalを使ったりと、かなり曖昧な状態だった。PowerToys RunからVSCodeを開くようになったおかげで、基本的にWindows Terminalを開く必要がなくなり、統一されてHappy。画面配信をするときも1アプリケーションに閉じてる方が楽で良い。
