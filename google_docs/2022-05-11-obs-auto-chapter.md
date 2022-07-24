---
title: OBSでチャプター情報を自動で書き出す
---
[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使うために、OBSからYouTube互換のチャプター情報を自動生成するスクリプトを書いた。[https://github.com/r7kamura/obs-scripts](https://github.com/r7kamura/obs-scripts)で公開している。

どういうもの？
-------

これを導入すると、配信を始めるたびに新しいテキストファイルがつくられ、シーン切替時にシーンの名前と経過時間が自動的に書き出される。配信が終わったら、テキストファイルの内容をYouTubeの概要欄に貼り付けると、自動的にチャプターが生成される。配信だけでなく録画でも使える。

つかいかた
-----

上のページにも書いてあるが、ここでは日本語で使い方を説明する。まず[chapter.lua](https://raw.githubusercontent.com/r7kamura/obs-scripts/main/chapter.lua)をダウンロードする。ページを開いて名前を付けて保存すればいい。ファイル名はchapter.lua.txtよりchapter.luaが好ましい。

![](https://lh5.googleusercontent.com/vb4ySOM7FO4W5mM-_IIdJQ_c1NBjN1a6Ky90i0afZ18F2gU8tza4o0tyOS7spMlQyYvAqzMyYVCY-mKNmtbZ_n374VpV21dkALh1iRVvpte89dteIq7pAnhyRK97eLxifZl1m8BauEWvW6YcWvw7UQ)

OBSのメニューから「ツール」>「スクリプト」を開く。「+」ボタンを押し、ダウンロードしたchapter.luaを選択する。次に、テキストファイルを保存するディレクトリを選択する。デスクトップとかでもいい。

これで設定は完了。配信を開始して、シーンを何度か切り替えて、配信を終了する。上手く設定できていれば、テキストファイルにチャプター情報が書き出される。

おわり
---

シーン切替時に名前を書き出すだけの素朴な仕組みなので、これだけでは上手く要件を満たせないケースもあるとは思う。編集を楽にするために補助的に使えれば嬉しい。
