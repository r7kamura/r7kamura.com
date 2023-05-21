---
title: 初期化後にMacのバッテリーの充放電回数を調べる
---

初期化後でもターミナルを起動でき、`ioreg` コマンドの出力から充電回数を確認できる。

```bash
ioreg -l | grep CycleCount | grep -v Design
```

例えばMacBook Proの売却時に充放電回数を尋ねられることがあるため、初期化後でも確認できると便利。
