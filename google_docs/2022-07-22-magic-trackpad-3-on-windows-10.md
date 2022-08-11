---
title: Windows10でMagic Trackpad 3
---
Windows 10にドライバを入れて[Magic Trackpad 3](https://www.amazon.co.jp/dp/B09BTT6FJ9)を無線接続してみたところ、普通に快適に使えるようになった。

![](https://lh3.googleusercontent.com/1XqtClRzx_giDSJ28znnmADf-IR0FllsS7LaI69IjbrfOryHIdie88msoERfkeQfsNdCS08o6f3pA10YI8ZUbVDF0d1ZJ7-s9uw6nke-ty0bZ8v2DAa3MrnSUD9AzDS3fsWfDIVeRuHHV1TQ_YqMlew)

Magic Trackpad 3は2021年8月に発売されたモデル。これをWindows 10にBluetoothでペアリングし、[mac-precision-trackpad](https://github.com/imbushuo/mac-precision-touchpad)というOSSのドライバを入れたところ、4本指の操作なども含めてまともに動くようになった。細かい使い心地についても、個人的には特に申し分ないと感じる。

Drivers-amd64-ReleaseMSSigned.zipをダウンロードして展開し、中に含まれているAmtPtpDevice.infというファイルを右クリックしてインストールを選択するだけ。Windows 11の場合は、その他のオプションの中にインストールの項目があるはず。再起動は必要無くて、入れた瞬間からまともに動く。

ちなみに、ドライバを入れる前の状態では、まず有線接続した段階でもWindowsにタッチパッドとして認識されて、ポインターを動かせることは確認した。その後Bluetoothでのペアリングも正常に完了したが、無線接続ではポインターを動かすことはできなかった。その段階でドライバーを入れたら無線接続のままでも動くようになった。故に、事実上このドライバーの導入は必須だと考えている。

![](https://lh6.googleusercontent.com/aRDKM2Hy6vikiUjE70lPwRQCmB8C-ZeRaW0eBW3HLDTCs-b-4244sleb1pr7Vu5yhy5aH7LLA4AK4P8d5i-7_-487Ae-UCfo4huY28iBtlvzzYXE35ylVRW9M4j6KO-rl4YhYShoz_IlrWYtrGkCApc)

Appleのトラックパッドは質が良く入手もしやすいので、これがWindowsでもまともに動くのは最高。
