---
title: フロントパネル用コネクタのHDD LEDを無効化
---

ストレージアクセスのたびにPCケースの電源ボタンのLEDが点滅して鬱陶しかったので、HDD LEDのジャンパーピンを抜いて無効化した。

利用しているPCケースはNZXTのH510 Elite、マザーボードはMSIのX570 UNIFY。このH510 Eliteに付いているフロントパネル用コネクタは、次の6つのピンが1個にまとまっている。リセットボタンは無いので、Reset Switchのピンは存在しない。

- Power LED +
- Power LED -
- Power Switch +
- Power Switch -
- HDD LED +
- HDD LED -

これらを分割する変換コネクタが付属していたので、これを接続し、HDD LED +とHDD LED -以外の残りのピンだけ接続する。

![](https://i.imgur.com/MuFEjlVh.png "NZXT H510 Eliteのマニュアルより")

配線方法は、マザーボードのマニュアルを見るのが分かりやすい。

![](https://i.imgur.com/O7qK7UAh.png "MSI X570 UNIFYのマニュアルより")

電源ボタンのLEDが点滅しなくなり、平和な暮らしが訪れた。
