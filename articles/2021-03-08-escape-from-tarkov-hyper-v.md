---
title: 『Escape from Tarkov』とHyper-V
---

最近やり始めた『Escape from Tarkov』で、チート対策のプログラムにHyper-Vが誤検知されるという問題が起きたので、自分の行った対策を書いておく。

- https://www.escapefromtarkov.com/

前提として、自分はWSL2とDocker Desktop for Windowsを利用している。このWindows PCでEsacpe from Tarkovを実行し、レイドに入って8分程度経過すると、Hyper-Vが云々というメッセージが表示され、退出させられる。Docker Desktop for Windowsを終了させて再試行しても、同様に退出させられる。

「escape from tarkov hyper-v」で検索すると、同様の問題が公式フォーラムやRedditで報告されていることが分かる。

- https://forum.escapefromtarkov.com/topic/147299-ejected-from-game-because-hyper-v-is-running/
- https://www.reddit.com/r/EscapefromTarkov/comments/l8vx5k/disallowed_program_hyperv/

最終的には、Redditで紹介されている方法で解決できた。

次のようにPowershellで次のコマンドを実行すると、表示名にHyper-VまたはDockerを含むサービスを一覧できる。

```
PS C:\Windows\system32> Get-Service | where { $_.DisplayName -like "Hyper-V*" -or $_.DisplayName -like "Docker*" }

Status   Name               DisplayName
------   ----               -----------
Stopped  com.docker.service Docker Desktop Service
Running  vmcompute          Hyper-V ホスト コンピューティング ...
Stopped  vmicguestinterface Hyper-V Guest Service Interface
Stopped  vmicheartbeat      Hyper-V Heartbeat Service
Stopped  vmickvpexchange    Hyper-V Data Exchange Service
Stopped  vmicrdv            Hyper-V リモート デスクトップ仮想化...
Stopped  vmicshutdown       Hyper-V Guest Shutdown Service
Stopped  vmictimesync       Hyper-V Time Synchronization Service
Stopped  vmicvmsession      Hyper-V PowerShell Direct Service
Stopped  vmicvss            Hyper-V ボリューム シャドウ コピー ...
```

Docker Desktop for Windowsを終了させた状態では、上のような状態になっている。具体的には、vmcomputeがRunningになっていることが分かる。

管理者権限で起動したPowershellで次のようにコマンドを実行すると、これらの全てのサービスを一括して停止できる。

```
PS C:\Windows\system32> Get-Service | where { $_.DisplayName -like "Hyper-V*" -or $_.DisplayName -like "Docker*" } | % { Stop-Service $_ }
```

結果的に、Escape from Tarkovの起動前に毎度これを実行することにした。また、Windows TerminalとVisual Studio Codeを起動したままの状態で放置していると、停止させたはずのvmcomputeが再度Runningに戻っているという事象が確認できたので、あわせてこれらのプログラムも終了させることにしている。
