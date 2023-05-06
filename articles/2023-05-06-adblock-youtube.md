---
title: AdBlockとYouTubeの動画URL
---

AdBlockを入れていると、YouTubeの動画URLが長くなるっぽい。

2023年5月6日現在、Google Chrome用の拡張AdBlockを入れると、デフォルトでこのオプションが有効化されている。これが有効化されている状態だと、YouTubeの動画ページにアクセスした際、ロケーションバーに表示されるURLが `https://www.youtube.com/watch?v=...&ab_channel=...` のような形式になる。この `ab_channel` というクエリ部分にチャンネル名が含まれるため、URLが余計に長くなってしまい、URLをコピペして共有するときなどに不便である。

設定でこれを無効化し、一度Google Chromeを再起動することで、この挙動を無効化できた。

![](https://i.imgur.com/QOv5vtEh.png "設定で無効化した様子")
