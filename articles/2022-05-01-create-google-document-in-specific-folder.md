---
title: フォルダにGoogleドキュメントを作るURL
---
次のような形式のURLにアクセスすると、特定のフォルダ内で新しいGoogleドキュメントの編集画面を開けるらしい。

[https://docs.google.com/document/create?folder={folder\_id}](https://docs.google.com/document/create?folder=%7Bfolder_id)

{folder\_id} の部分は、フォルダのIDに置き換えること。フォルダのIDは、Googleドライブでフォルダにアクセスすると、URLの末尾の部分に記載されている。

このURLでは他に、次のようにtitleというURLクエリパラメーターも使えるらしい。例えば、今日の日記を書くようなBookmarkletとかで便利に使えるかも。

[https://docs.google.com/document/create?title=2022-05-01-diary](https://docs.google.com/document/create?folder=%7Bfolder_id)

アカウントを指定して開きたい場合は、次のような形式のURLを利用できる。

[https://accounts.google.com/AccountChooser?Email={email}&faa=1&continue={url](https://accounts.google.com/AccountChooser?Email=%7Bemail%7D&faa=1&continue=%7Burl)}

{email}の部分はGmailのメールアドレスに、{url}の部分は前述したドキュメントを開くためのURLに置き換えること。また、URLクエリ部分にメールアドレスやURLを含めることになるので、例えば Email=r7kamura%40gmail.com のように適切にエスケープする必要がある。

どこからこのURLを知り得たかというと、GoogleドライブアプリをWindowsに入れ、エクスプローラーのコンテキストメニューからGoogleドキュメントを新規作成しようとすると、この形式のURLが使われていることが確認できた。
