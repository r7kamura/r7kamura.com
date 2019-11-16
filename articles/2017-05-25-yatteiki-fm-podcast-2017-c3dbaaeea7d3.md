---
date: 2017-05-25T08:58:38.173Z
from: medium
title: "yatteiki.fm Podcast 環境 2017"
---

![普段使っているマイクなど](https://cdn-images-1.medium.com/max/800/1*C75Lj6WmN_I9Rl0un_icvQ.png)
普段使っているマイクなど

最近の Podcast 収録環境のまとめ。使っているソフトとハードについて。

[**yatteiki.fm**  
_個人開発者達がやっていくPodcast_yatteiki.fm](https://yatteiki.fm/ "https://yatteiki.fm/")[](https://yatteiki.fm/)

最初にまとめておくと、以下のような環境である。

マイク: Yeti  
通話: Skype  
録音: Audacity  
編集: Audacity、Levelator、Lame  
ホスティング: GitHub Pages、Route53、CloudFlare  
アクセス集計: Google Analytics、FeedBurner  
エゴサーチ: Twitter、Slack

## マイク

Blue Micro Yeti を使っている。接続するだけで使えて、とにかく問題は少ない。対面で録音するときにも使える。2年ほどリモートで働いているので、仕事やゲームでのボイスチャットでもこれを使っている。

この手のマイクは感度が高いので、部屋がうるさいとその騒音を拾ってしまいがちである。またスタンドマイクの構造上、机からの音をよく拾う傾向にあるので、キーボードやマウスの音を拾ってしまいやすい。ショックマウントを使うと改善できるはずだが、まだ手を出していない。

[**Blue Micro Yeti USB 2.0マイク 15374**  
_☆当商品は新品未開封の並行輸入品です。 ☆既に国内に輸入済みですので、関税等は一切かかりません。 ◆輸入品のため、外箱等に擦りキズ，凹み等がある場合がございますが、商品自体に影響はありません。◆輸入品のため国内保証は対象外となります。 …_amzn.to](http://amzn.to/2qezTvp "http://amzn.to/2qezTvp")[](http://amzn.to/2qezTvp)

[**Blue Radius II Shockmount for Yeti and Yeti Pro USB microphones**  
_Blue Radius II Shockmount for Yeti and Yeti Pro USB microphonesがヘッドホン延長ケーブルストアでいつでもお買い得。当日お急ぎ便対象商品は、当日お届け可能です。アマゾン配送商品…_amzn.to](http://amzn.to/2rTc2yb "http://amzn.to/2rTc2yb")[](http://amzn.to/2rTc2yb)

## 通話

Skype で通話している。音質が良く安定している。

[**Skype | 友達や家族への無料通話**  
_Skype をダウンロードして、家族や友達と無料で連絡を取り合いましょう。国際通話、無料のオンライン通話、デスクトップやスマートフォン で使える Skype for Business をご利用いただけます。_www.skype.com](https://www.skype.com/ja/ "https://www.skype.com/ja/")[](https://www.skype.com/ja/)

## 録音

Audacity で録音している。QuickTime とかでも録音できるけど、後にどうせ Audacity で編集するので、録音も Audacity でやっている。

[**Audacity®**  
_Audacity® is free, open source, cross-platform audio software for multi-track recording and editing. Audacity is…_www.audacityteam.org](http://www.audacityteam.org/ "http://www.audacityteam.org/")[](http://www.audacityteam.org/)

## 編集

Audacity で前後をカットし、ホワイトノイズを自動除去したあと、Levelator で音量を自動調整し、Lame で mp3 化している。編集作業は毎回 10分ぐらいで終わる。

編集作業というのは結構面倒なもので、あまり細かく編集せずに気楽にやるほうが Podcast 活動を継続しやすい。Audacity の自動ホワイトノイズ除去や Levelator の音量調整はなかなか優秀。Audacity には、N秒間無音が続いた部分を自動的に消す機能などもあるらしく、もっと凝ることもできる。

[**The Levelator® from _The Conversations Network_**  
The Conversations Networkwww.conversationsnetwork.org](http://www.conversationsnetwork.org/levelator "http://www.conversationsnetwork.org/levelator")[](http://www.conversationsnetwork.org/levelator)

Audacity や Levelator で扱う音源は aiff 形式で、これを圧縮して mp3 に変換するために、lame を使っている。lame は Homebrew でインストールしたものをコマンドラインから利用しているが、Audacity の lame プラグインを利用しても実現できる。

モノラルで 64kbps の音源に変換していて、これで60分の音源で30MB程度になる。ちなみに GitHub Pages で配信できるのは 100MB のファイルまでという制約があり、1リポジトリあたりの容量は 1GB までにすることが推奨されている。

## ホスティング

GitHub Pages で、Jekyll を使った Web サイトを配置している。Jekyll を使っている場合、CI サービスを使わなくても GitHub が自動的に静的サイトを構築してくれるので、手間が少なくて済む。

ちなみにドメイン管理には Route53、途中の経路の HTTPS 化には CloudFlare を使っている。

[**Jekyll \* Simple, blog-aware, static sites**  
_Transform your plain text into static websites and blogs_jekyllrb.com](https://jekyllrb.com/ "https://jekyllrb.com/")[](https://jekyllrb.com/)

[**GitHub Pages**  
_Websites for you and your projects, hosted directly from your GitHub repository. Just edit, push, and your changes are…_pages.github.com](https://pages.github.com/ "https://pages.github.com/")[](https://pages.github.com/)

## アクセス集計

Web サイトへのアクセスの集計は Google Analytics、Podcast として配信している RSS へのアクセスの集計は FeedBurner を使っている。でも半年に一度くらいしか見ていない。

## エゴサーチ

yatteiki Slack チームがあって、そこに#twitter チャンネルをつくり、Heroku で Ruboty 製の Bot を動かし、ruboty-cron と ruboty-twitter\_search で毎分特定のキーワードで Twitter を検索し、出てきたツイートの URL を流している。Slack が URL を展開してくれるので、勝手に中身が表示される。

あまり頻繁には見てないけど、たまに見て、おお意外とリスナーいるなということを再確認している。

[**yatteikifm/yatteikibot**  
_yatteikibot - A template to create and deploy your ruboty on slack._github.com](https://github.com/yatteikifm/yatteikibot "https://github.com/yatteikifm/yatteikibot")[](https://github.com/yatteikifm/yatteikibot)
