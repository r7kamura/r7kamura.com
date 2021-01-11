---
title: AirPodsをWindowsで使う
---

AirPodsをWindowsで使うときの設定のアレコレについて。前に[AirPods Pro](/articles/2020-12-13-airpods-pro)という記事でも触れたように、少し前からWindowsでAirPods Proを利用している。そこで幾つかはまりがちな点があったので、誰かのためにまとめておく。

## ペアリング

AirPodsの充電を済ませた状態で、AirPodsをペアリング可能な状態にし、Windows側で次のような手順を踏んでAirPodsを探す。

1. Bluetooth とその他のデバイス
2. Bluetooth またはその他のデバイスを追加する
3. デバイスを追加する
4. Bluetooth

ここで本来であればAirPodsが検出されて、ペアリングできる。

![](https://i.imgur.com/HbCYiDkh.png "ペアリング成功例")

但し、たまにペアリングしようとして検出できない状態に陥る場合があった。

- AirPodsの充電を待つ
- AirPodsをリセットする

という手順でそのときは問題を解決できた。

## サウンド設定

AirPodsをペアリングすると、2つの再生デバイスと1つの録音デバイスが追加される。

1. 再生デバイス ヘッドホン AirPods Pro Stereo
2. 再生デバイス ヘッドセット AirPods Pro Hands-Free AG Audio
3. 録音デバイス ヘッドセット AirPods Pro Hands-Free AG Audio

このとき、録音デバイスとしてヘッドセットを利用していると、再生デバイスとしてのヘッドホンは機能しなくなる。具体的には、再生デバイスに選択していても音声が出力されなくなる。録音デバイスとして実際に利用されている場合だけ出力されなくなるので、例えばDiscordで通話しているまたは設定画面を開いているときだけ音声が再生されない、といった感じの事象が発生することになるだろう。

ヘッドホンとして利用する場合は高音質なA2DPというBluetoothプロファイルが、ヘッドセットとして利用する場合は音声入出力を1つの帯域に載せられる代わりに低音質なHFPというBluetoothプロファイルが利用されるのだけど、これらは同時に1つしか利用できないので、そういうことになる。そしてHFPだとほぼ使い物にならないほどに音質が低いので、正直現状のWindowsとAirPodsの組み合わせでは、マイクは使い物にならないものと考えた方が良さそうだ。

そういう訳なので、意図せず利用されてしまうことを防ぐために、自分は前述したうちの次のデバイスをサウンド設定から無効化している。

- 再生デバイス ヘッドセット AirPods Pro Hands-Free AG Audio
- 録音デバイス ヘッドセット AirPods Pro Hands-Free AG Audio

但し、ペアリングをやり直すとこの辺りの設定が初期化されたりするので、ペアリングするたびあるいは音声周りで問題を感じるたびにこの設定を見直すことにしている。