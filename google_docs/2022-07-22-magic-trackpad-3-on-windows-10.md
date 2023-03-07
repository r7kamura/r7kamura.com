---
title: Windows10でMagic Trackpad 3
---
Windows 10にドライバを入れて[Magic Trackpad 3](https://www.amazon.co.jp/dp/B09BTT6FJ9)を無線接続してみたところ、普通に快適に使えるようになった。

![](https://lh6.googleusercontent.com/A5V83kFdnT-wmo1RwFqn0t7hkBlL2TvXifzRSmTET5WNvOu6MyxI6AntPCwJlhz6IjbLb12ltwx2IMAUoOR5dj-RO4LotoO-sUesyJ3IQZxNNoiaKDjYR38ZPsr9CdKCxZUG_f98qwGB3MKnuWES-2w)

Magic Trackpad 3は2021年8月に発売されたモデル。これをWindows 10にBluetoothでペアリングし、[mac-precision-trackpad](https://github.com/imbushuo/mac-precision-touchpad)というOSSのドライバを入れたところ、4本指の操作なども含めてまともに動くようになった。細かい使い心地についても、個人的には特に申し分ないと感じる。

Drivers-amd64-ReleaseMSSigned.zipをダウンロードして展開し、中に含まれているAmtPtpDevice.infというファイルを右クリックしてインストールを選択するだけ。Windows 11の場合は、その他のオプションの中にインストールの項目があるはず。再起動は必要無くて、入れた瞬間からまともに動く。

ちなみに、ドライバを入れる前の状態では、まず有線接続した段階でもWindowsにタッチパッドとして認識されて、ポインターを動かせることは確認した。その後Bluetoothでのペアリングも正常に完了したが、無線接続ではポインターを動かすことはできなかった。その段階でドライバーを入れたら無線接続のままでも動くようになった。故に、事実上このドライバーの導入は必須だと考えている。

![](https://lh4.googleusercontent.com/cqeaAq-mtEFXVw5GbsXbJN-08FzfCRF2CNk-yUV1K0DxpqMxe3Ewl8jYZ04NTDk5Jjk3L0jl4gUMx9n4iM-Rfi5XvkGVgok8WA6sXBURhLGyOiwkeIHf2ruTmhVVdU-vVG4aNqWw5zZesG7H0JpqFgw)

Appleのトラックパッドは質が良く入手もしやすいので、これがWindowsでもまともに動くのは最高。
