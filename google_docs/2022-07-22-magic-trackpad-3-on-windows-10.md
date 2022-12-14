---
title: Windows10でMagic Trackpad 3
---
Windows 10にドライバを入れて[Magic Trackpad 3](https://www.amazon.co.jp/dp/B09BTT6FJ9)を無線接続してみたところ、普通に快適に使えるようになった。

![](https://lh3.googleusercontent.com/lBOAmEr-U7pHlE3MfquhtV9-wjAdr5whuqMJcdk3jtQJDX3ld8Mc4bBCyH6V6i-pzy0ZzNDw-3g-W9Fb2tQsnZI6zawfKojm1YoQKRWzEauLbb9EExG0vz_uKEKR22Qoliqr-GIGKt0X-_IIMMdF-qVyGN4pdCcg3IM2cZ4pdgUsZsMRQ5O0JA_XUvukWQ)

Magic Trackpad 3は2021年8月に発売されたモデル。これをWindows 10にBluetoothでペアリングし、[mac-precision-trackpad](https://github.com/imbushuo/mac-precision-touchpad)というOSSのドライバを入れたところ、4本指の操作なども含めてまともに動くようになった。細かい使い心地についても、個人的には特に申し分ないと感じる。

Drivers-amd64-ReleaseMSSigned.zipをダウンロードして展開し、中に含まれているAmtPtpDevice.infというファイルを右クリックしてインストールを選択するだけ。Windows 11の場合は、その他のオプションの中にインストールの項目があるはず。再起動は必要無くて、入れた瞬間からまともに動く。

ちなみに、ドライバを入れる前の状態では、まず有線接続した段階でもWindowsにタッチパッドとして認識されて、ポインターを動かせることは確認した。その後Bluetoothでのペアリングも正常に完了したが、無線接続ではポインターを動かすことはできなかった。その段階でドライバーを入れたら無線接続のままでも動くようになった。故に、事実上このドライバーの導入は必須だと考えている。

![](https://lh5.googleusercontent.com/-5qOW-8XFwI1Q5Y_KFM2pIkOkIKcKouJt5v18nq2Bkrag7NbC4lPlDK9Wsb44g1LaxFoeqn-NjgbwKQlWTLBTNllFjdSDUz8hI1C0UxfFv2GhWZ-SxSXxUR-qaHyXaUqO_NiepZ2RjlBnuiA01DaRtE2PtgqdWLZ235y2cfQHx_C9nBklo79bSGF7W-_Rg)

Appleのトラックパッドは質が良く入手もしやすいので、これがWindowsでもまともに動くのは最高。
