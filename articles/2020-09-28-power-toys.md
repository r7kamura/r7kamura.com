---
title: PowerToysで豪遊
---

Windows用にPowerToysというのを教えてもらって、使ってみたら思いの外よかったという話。

https://github.com/microsoft/PowerToys

## PowerToys Run

PowerToysというのは、Windowsをより便利にする機能群をまとめたアプリケーション。

```
winget install PowerToys
```

wingetで入れられるので試しに入れてみて、その中のPowerToys Runという機能を常用してみることにした。

![](/images/2020-09-28-power-toys-run.png)
PowerToys Runsの様子

Macの[Alfred](https://www.alfredapp.com/)と使用感がかなり似ていて、使い心地もわりと良い。似たようなことはWinodwsキーを押したあとに使える検索機能でも代替可能なのだけど、こちらの方が使い勝手が少し良い。

デフォルトはAlt + Spaceなのだけど、Windowsの機能と競合することも多いので、Ctrl + Spaceに割り当てることにした。このショートカットキーはGoogle IMEで入力ソースを切り替えるためのショートカットキーとして登録されているので、設定でこれを取り除くなどの操作も加えた。

## PowerToys FancyZones

一応他の機能の例も紹介しておくと、FancyZonesという機能も、人によっては活用できることが多いと思う。自分は画面は常に2分割しかしない派なので、Windowsのスナップ機能で間に合っており、今のところは間に合っている。

![](/images/2020-09-28-power-toys-fancy-zones.png)
FancyZonesの設定画面

スナップ機能については、もともと気に入らない挙動があったので困っていたところ、amagiさんが教えてくれたおかげで解決できた。設定 > マルチタスク から「ウィンドウをスナップしたときに、横に配置できるものを表示する」という機能をオフにできるらしい。

## システムの復元

PowerToysのKeyboard Managerを試してみたら、キーマップを登録して戻す操作をしても永続的に元に戻らなくなってしまい、システムの復元という機能で数時間前の状態に戻ることで事なきを得た。

キーボードのレジストリ書き換え部分の実装が甘いのかもしれない。そして、いつからかWindowsではレジストリの自動バックアップを取らなくなってしまっていた。ともあれ復元できて安心した。