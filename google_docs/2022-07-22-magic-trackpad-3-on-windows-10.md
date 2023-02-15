---
title: Windows10でMagic Trackpad 3
---
Windows 10にドライバを入れて[Magic Trackpad 3](https://www.amazon.co.jp/dp/B09BTT6FJ9)を無線接続してみたところ、普通に快適に使えるようになった。

![](https://lh4.googleusercontent.com/-dM2-fEpBEGR81SzAxzFTWgPZ5y70Lf7O7CPlu7krd-5P4iFipgJ6eYDfxJFgwUIpa_gkm9eMerN0Cva3eDvD8GGvqyTIyJU_tRUW1XD1Yg2PcVwrCRMGji0mnVOB8rnv3B3clLhv5AipkR2kBHxEOE)

Magic Trackpad 3は2021年8月に発売されたモデル。これをWindows 10にBluetoothでペアリングし、[mac-precision-trackpad](https://github.com/imbushuo/mac-precision-touchpad)というOSSのドライバを入れたところ、4本指の操作なども含めてまともに動くようになった。細かい使い心地についても、個人的には特に申し分ないと感じる。

Drivers-amd64-ReleaseMSSigned.zipをダウンロードして展開し、中に含まれているAmtPtpDevice.infというファイルを右クリックしてインストールを選択するだけ。Windows 11の場合は、その他のオプションの中にインストールの項目があるはず。再起動は必要無くて、入れた瞬間からまともに動く。

ちなみに、ドライバを入れる前の状態では、まず有線接続した段階でもWindowsにタッチパッドとして認識されて、ポインターを動かせることは確認した。その後Bluetoothでのペアリングも正常に完了したが、無線接続ではポインターを動かすことはできなかった。その段階でドライバーを入れたら無線接続のままでも動くようになった。故に、事実上このドライバーの導入は必須だと考えている。

![](https://lh6.googleusercontent.com/HztqhKPA2HEKVWpmV3-fD11QYKL56DFOfulmyrfzQBtIcT1xmJS6KvO7-FJ9IP1X2hH8q-IsjmMDHyGTbGfIEieA7-Vg2l0LRToI1Ha8kXKy6Jjqz7qIj2zTyZVIuegO7ADMyQ2Pe4KxmW399801Zkk)

Appleのトラックパッドは質が良く入手もしやすいので、これがWindowsでもまともに動くのは最高。
