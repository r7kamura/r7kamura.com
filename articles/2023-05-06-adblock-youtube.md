---
title: AdBlockとYouTubeの動画URL
---

AdBlockを入れていると、YouTubeの動画URLが長くなるっぽい。

2023年5月6日現在、Google Chrome用の拡張AdBlockを入れると、デフォルトで「特定のYouTubeチャンネルの広告表示を許可する」オプションが有効化されている。これが有効化されている状態だと、YouTubeの動画ページにアクセスした際、ロケーションバーに表示されるURLが `https://www.youtube.com/watch?v=...&ab_channel=...` のような形式のままになることを確認した。

この `ab_channel` というクエリ部分にチャンネル名が含まれるので、URLが余計に長くなってしまい、URLをコピペして共有するときなどに不便だった。設定でこのオプションを無効化し、Google Chromeを再起動することで、この挙動を無効化できた。

![](https://i.imgur.com/QOv5vtEh.png "設定で無効化した様子")
