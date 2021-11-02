---
title: Windows開発環境構築メモ
---

開発環境構築用のメモを自分用に書き残しておく。

## GUIアプリケーション

この辺りを入れる。

- Google Chrome
- Google日本語入力
- 1Password 4
- Dropbox
- Docker Desktop for Windows

未だに購読版に移行せず買い切り版の1Password 4を利用している。

Windows + Vを利用するとクリップボード履歴を有効化できるので、済ませておく。

## Google日本語入力の設定

- HENKANキーでIMEを有効化
- MUHENKANキーでIMEを無効化

というキー設定を普段利用しているのでそのように設定する。

- 直接入力
- 入力文字なし
- 変換前入力中
- 変換中

以上の4つのモードについて、それぞれキー設定のエントリを追加する。

## Windowsライセンス認証

Windows 10 Pro 64bit辺りをライセンスキー無しでインストールしていると思うので、アカウント設定からMicrosoft Storeに遷移して購入を済ませる。Microsoftアカウントで正しく認証していれば、購入を済ませるだけで勝手にライセンスの認証を済ませてくれる。

## WSL2

WSL2とUbuntu 20.04を入れる。

<https://docs.microsoft.com/ja-jp/windows/wsl/install-win10#manual-installation-steps> のページを見ながら進めると良い。

作業内容としては、まず以下のコマンドを管理者として開いたPowerShellで実行し、OSを再起動する。

```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

次に「x64 マシン用 WSL2 Linux カーネル更新プログラム パッケージ」をそのページのリンクからダウンロードして実行し、普通に起動したPowerShellで以下のコマンドを実行する。

```
wsl --set-default-version 2
```

その後、Microsoft Storeのアプリケーションを開き、Ubuntu 20.04 LTSをインストールする。Ubuntu初回起動時にユーザ名やパスワードを設定する。

## Windows Package Manager

Windows Package Managerで入れられるものはこれで入れた方が楽なので、これを導入する。

<https://github.com/microsoft/winget-cli/releases> でMicrosoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundleをダウンロードして実行すると入る。

```
winget install Discord
winget install Slack
winget install SoundSwitch
winget install VSCode
winget install WindowsTerminal
```

## Windows Terminal

Windows Terminalで次の設定をする。

1. フォントを変更する
2. 起動時にUbuntu-20.04をホームディレクトリで開く

設定方法は <https://docs.microsoft.com/ja-jp/windows/terminal/customize-settings/global-settings> を見ると良い。

例えば、フォントは以下のように変える。

```json
{
  "profiles": {
    "defaults": {
      "fontFace": "ＭＳゴシック",
      "fontSize": 18
    }
  }
}
```

起動時の設定は、Ubuntuのプロファイルを以下のように設定した後、defaultProfileをUbuntuのものに変更する。

```json
"commandline": "wsl.exe ~ -d Ubuntu-20.04"
// "source": "Windows.Terminal.Wsl"
```

## Ubuntu

Ubuntu側で開発用に必要な設定を加える。

```
sudo apt update
sudo apt install ghq golang peco tig tmux --yes

echo 'export PATH="~/go/bin:${PATH}"' >> ~/.bashrc

git config --global user.email r7kamura@gmail.com
git config --global user.name r7kamura
ghq get -p r7kamura/dotfiles
source ~/ghq/github.com/r7kamura/dotfiles/.bashrc
```

以上。
