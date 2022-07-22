---
title: Windows10でMagic Trackpad 3
---
Windows 10にドライバを入れて[Magic Trackpad 3](https://www.amazon.co.jp/dp/B09BTT6FJ9)を無線接続してみたところ、普通に快適に使えるようになった。

![](https://lh6.googleusercontent.com/5NOlYeahTPxNLsTNSQJpdnGBNpdG2rgQZNpRu8gau3cwhdfcE5u3zk81-8s0Gz4hUChObU4z-zR8X9ZmmpASDPtVSB-FdPIFC2ifEt1ZUdm11ys3_jhi7xN_-5lvCcy4BDvCoZiwmx0ER8w0953BvvM)

Magic Trackpad 3は2021年8月に発売されたモデル。これをWindows 10にBluetoothでペアリングし、[mac-precision-trackpad](https://github.com/imbushuo/mac-precision-touchpad)というOSSのドライバを入れたところ、4本指の操作なども含めてまともに動くようになった。細かい使い心地についても、個人的には特に申し分ないと感じる。

Drivers-amd64-ReleaseMSSigned.zipをダウンロードして展開し、中に含まれているAmtPtpDevice.infというファイルを右クリックしてインストールを選択するだけ。Windows 11の場合は、その他のオプションの中にインストールの項目があるはず。再起動は必要無くて、入れた瞬間からまともに動く。

![](https://lh5.googleusercontent.com/wXGJAymAsYn9R6CfNumbrMy_8vLjQpBrU4sbJbESXp2bjXnHCGoxkOHINoNaYEbw3Yoj6YLPSI9kX0bHc406iYPa0SomkUsiTh_OrrxqhkHFWWDlqNLN0J08jJXe8ud_MYW9f09mrRXSJ32DdvdOgbw)

Appleのトラックパッドは質が良く入手もしやすいので、これがWindowsでもまともに動くのは最高。
