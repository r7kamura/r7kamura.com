---
title: WindowsのDocker Engineのアップデート
---

最終的にDocker Desktop for Windowsをアップデートした。

## 背景

`docker-compose` ではなく `docker compose` を使って対話型のシェルを起動すると、コントロールシーケンスの入力を意図した形に認識してくれず、Rawモードで動作してしまう。要は、例えば矢印キーを入力したりすると `^[[D` 等が直接入力されてしまう。Googleで検索すると、GitHub Issuesで報告されていることが分かる。

- <https://github.com/docker/compose-cli/issues/1908>
- <https://github.com/docker/compose-cli/pull/1934>

docker/compose-cli v2.0.0.rc-1で修正されているらしい。そもそも今のDocker Engineのバージョンは幾つなんだ。

```
$ docker -v
Docker version 20.10.7, build f0df350
```

20.10.7らしい。今の最新版は20.10.9。バージョンを変更したら問題が解消される可能性がある。

自分の環境では、Docker EngineのバージョンはDocker Desktop for Windowsによって管理されているため、Docker Desktop for Windowsのバージョンを上げることを試みる。Windowsの「アプリと機能」から、現在のDocker Desktop for Windowsのバージョンが3.5.xぐらいであることが分かる。

## Docker Desktop for Windowsをアップデート

最新版は4.1.1なので、最新版のインストーラーをダウンロードして起動し、Windowsを一度再起動する。

- <https://docs.docker.com/desktop/windows/release-notes/>

```
$ docker -v
Docker version 20.10.8, build 3967b7d
```

最新版には上がらなかったが、20.10.7から20.10.8に上がり、件のdocker composeのコントロールシーケンスの問題も解決された。めでたしめでたし。
