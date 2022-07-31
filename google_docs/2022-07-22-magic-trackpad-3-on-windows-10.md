---
title: Windows10でMagic Trackpad 3
---
Windows 10にドライバを入れて[Magic Trackpad 3](https://www.amazon.co.jp/dp/B09BTT6FJ9)を無線接続してみたところ、普通に快適に使えるようになった。

![](https://lh6.googleusercontent.com/BUH8CpiyP7Utp5AXksP_XqnuWs_cWksOSLACFy5Qaabr3snOBsfKWfGFOeRs3qommNc__HTYm94GInepmB4U45y2qHA068w0dQgWBlUHQvPr2sXqZwv0G-o-0lfV4S8KmbZDM0WDPYYLRqaRoyUF0V4)

Magic Trackpad 3は2021年8月に発売されたモデル。これをWindows 10にBluetoothでペアリングし、[mac-precision-trackpad](https://github.com/imbushuo/mac-precision-touchpad)というOSSのドライバを入れたところ、4本指の操作なども含めてまともに動くようになった。細かい使い心地についても、個人的には特に申し分ないと感じる。

Drivers-amd64-ReleaseMSSigned.zipをダウンロードして展開し、中に含まれているAmtPtpDevice.infというファイルを右クリックしてインストールを選択するだけ。Windows 11の場合は、その他のオプションの中にインストールの項目があるはず。再起動は必要無くて、入れた瞬間からまともに動く。

ちなみに、ドライバを入れる前の状態では、まず有線接続した段階でもWindowsにタッチパッドとして認識されて、ポインターを動かせることは確認した。その後Bluetoothでのペアリングも正常に完了したが、無線接続ではポインターを動かすことはできなかった。その段階でドライバーを入れたら無線接続のままでも動くようになった。故に、事実上このドライバーの導入は必須だと考えている。

![](https://lh5.googleusercontent.com/ZJ8KLfWO_C79K8yYrMtayN-kCLKhKeVj-MTNJKmLx7remebsGvfujKq-XZUOvlH0XTgWDLlkZok6b75Gxyc3af07-nEMu-f59JNAwtyREqoiwLxIOICsXxrOczFwHe8UB7WYrjRkZwPAIwO5zjDaIfs)

Appleのトラックパッドは質が良く入手もしやすいので、これがWindowsでもまともに動くのは最高。
