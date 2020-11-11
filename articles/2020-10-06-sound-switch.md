---
title: SoundSwitch
---

![](https://i.imgur.com/vzJoqAN.gif "ショートカットキーによる音声デバイス切り替えの様子")

[SoundSwitch](https://soundswitch.aaflalo.me/)という常駐型のアプリケーションを使っている。グローバルショートカットキーでWindowsの音声入出力デバイスを切り替えてくれる。

自分は出力先をスピーカーとヘッドホンで切り替えるために使っている。頻繁に使うので、現代においては使われることの少ない[ブレークキー](https://ja.wikipedia.org/wiki/%E3%83%96%E3%83%AC%E3%83%BC%E3%82%AF%E3%82%AD%E3%83%BC)に割り当てている。同じことを実現できるアプリとして他に[AudioSwitcher](https://audioswit.ch/er)があるが、知人曰く幾らか面倒な挙動があるとのことだったので、こちらを使っている。DiscordやSlack等の通話で使う出力デバイスも同時に切り替えたい場合は、通信デバイスも切り替えるオプションを有効化しておくこと。

公式サイトから手に入れられるが、Windows Package Managerを使っている人はwingetでも入れられる。自分が最初に試した当時は問題があったが、[GitHub Issue](https://github.com/Belphemur/SoundSwitch/issues/512)で問題を報告したところ、1ヶ月越しに対応してくれた。

```
winget install soundswitch
```
