---
title: Windowsで開発
---

Windowsで開発環境を整えた。

## 背景

開発環境を改善しようと思い、PCデスクの見直しなどをやっていたら、Windowsでも開発できるようにしようと思い至った。新しい環境を試してみたい気持ちが1割と、新しいゲーミングPCを組みたい気持ちが9割だ。

---

## エディション

Windows 10 Homeエディションを利用している。

Windows 10 ProにはHyper-Vという仮想化機能を直接利用できる利点があるが、WSL2で同じようなことをより便利に実現できるようになったおかげで、この点においてPro版の必要性は薄れてきている。今のところ自分のやりたいことはWindows 10 Homeですべて実現できている。

## Windows Update

WSL2を使うために、Windowsをバージョン2004・ビルド19041に更新した。

日々の自動更新ではバージョン1903で止まっていて、まだ自動では2004に上がらない状態だったので、[Windows 10 のダウンロード](https://www.microsoft.com/ja-jp/software-download/windows10) というページにアクセスし、最新版への移行アシスタントをダウンロードして実行。最近のやつに上げると、WSL2が有効化できるようになる。

## WSL2

Linuxディストリビューションを入れるために、WSL2を入れる。

WindowsがWSL2に対応したバージョンになっていることを確認した後、[Windows Subsystem for Linux (WSL) を Windows 10 にインストールする](https://docs.microsoft.com/ja-jp/windows/wsl/install-win10) というガイドを見ながら、以下のコマンドで、WSL2の有効化と、仮想マシンプラットフォームの有効化というやつを試みる。

全体を通して言えることだが、破壊的変更をもたらすようなコマンドは管理者権限で起動した端末を利用しないと実行できないので、その点は注意。

```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

有効化後、再起動するとWSLがインストールされており、コマンドプロンプトやPowerShellなどで `wsl` コマンドが使えるようになっている。WSL1とWSL2が入るので、デフォルトでWSL2を使うように設定しておく。

```
wsl --set-default-version 2
```

## Ubuntu 20.04 LTS

開発環境として使うためのLinuxディストリビューションを入れる。

Windowsに標準搭載されているMicrosoft Storeというアプリで、Linuxディストリビューション（をターミナル付きで起動できていい感じにWSL2と連携するようにラップしてくれたアプリケーション）が無料で配布されている。今回はUbuntu 20.04 LTSを選択した。

インストールして起動すると、PowerShell 7っぽい見た目のターミナルで初回のユーザ作成プロセスが立ち上がり、完了するとUbuntuの中に放り出される。

Windows側の端末で `wsl` コマンドを使うと、管理しているLinuxディストリビューションが増えていることが確認できる。

```
wsl --list --verbose
```

`wsl` コマンドを引数無しでそのまま使うと、その端末の中でシームレスにLinuxディストリビューション側にログインできる。

## Docker Desktop for Windows

Dockerを活用するために、Docker Desktop for Windowsを入れる。

Dockerが専用のエンジンで動くようになり、WindowsやLinux環境では `docker` コマンド経由でそこに対して命令を出す形になる。Windowsとの間でネットワークをいい感じにブリッジしてくれたりして非常に便利。

基本的に、開発で必要なソフトウェアはDockerイメージとして用意するように配慮して、開発用のLinuxディストリビューション側は、gitやtmuxなどの、汎用的なファイル操作や端末操作のためのソフトウェアを入れるに留めたい。

## Windows Package Manager

エディタや端末など、Windowsで使うアプリを簡単に入れるために、公式のパッケージマネージャを入れる。

まだまだ未発展なところも多いものの、使ってみるとそれなりに便利。
[GitHubリポジトリで配布されているインストーラ](https://github.com/microsoft/winget-cli/releases) を実行すると入れられる。完了すると、Windows側の端末で `winget` というコマンドが使えるようになる。

## Windows Terminal

Windows公式の最強の端末を入れる。

```
winget install "Windows Terminal"
```

これは全部盛りのアプリケーションで、内部でタブとしていろんな種類の端末を開けるようになっている。自分の環境では、コマンドプロンプト、PowerShell 5、PowerShell 7、Ubuntu用端末、Azure Cloud Shellなどの選択肢がある。色々考えるとそれなりに良い使い心地なので、端末はこれに落ち着いた。

注意してほしいのが、アンチエイリアスやフレーム更新などの描画処理をこだわっているせいなのか、グラフィック周りが不安定になることがある。自分の場合、G-SYNCを有効化しているとこのアプリケーションがアクティブなときだけ画面全体がちらつくようになったので、アプリケーションが全画面化されているとき以外はG-SYNCを無効化することにした。

デフォルトのフォントは日本語をサポートしていないので、ＭＳゴシックに変更する。設定を開くと settings.json がいきなり開くので、[Windows ターミナル プロファイルの設定](https://docs.microsoft.com/ja-jp/windows/terminal/customize-settings/profile-settings) を見ながら適当に編集する。

```json
{
  "profiles": {
    "defaults": {
      "fontFace": "ＭＳゴシック"
    }
  }
}
```


## Visual Studio Code

主なエディタとしてVisual Studio Codeを使っている。

Visual Studio Codeではこの手の環境のためにリモート機能が提供されていて、Linux側とWindows側のそれぞれのVisual Studio Codeのプロセスが協調し、ファイルをWindows側のGUIで編集したり、コマンドをLinux側で処理させたりできる。

Linux側で `code` コマンドを使ってワークスペースを編集しようとすると、Windows側のGUIでそれが開き、適当に編集するだけで基本上手くいく。

```
winget install "Visual Studio Code"
```

Windows側でインストールすれば、Linux側でも使える。

---

これでWindowsに依存した部分の環境構築は一段落。あとは開発用に用意したUbuntuをいい感じに整えていくだけだ。

[このサイトのリポジトリ](https://github.com/r7kamura/r7kamura.com)でもDocker環境を用意していたので、試しにUbuntu側にリポジトリをcloneしてきて、Visual Studio Codeで編集し、DockerでRubyのサーバを動かし、Windows側でプレビューする、ということをやりながらこの記事を書いてみた。

