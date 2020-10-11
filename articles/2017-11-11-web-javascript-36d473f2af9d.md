---
date: 2017-11-11T00:04:16.997Z
from: medium
title: "Web アプリの JavaScript の初期化処理をどうまとめるか"
---

いわゆる JavaScript のエントリポイントを、どういうパターンで管理しているかについて。

## ディレクトリ構成

自分の場合、次のようなディレクトリ構成でまとめていることが多い。

- client/javascripts/entryPoints/\*.js
- client/javascripts/initializers/\*.js

実例を挙げると、現在携わっているプロジェクトでは以下のようなファイルが存在する。

- client/javascripts/entryPoints/client.js
- client/javascripts/entryPoints/server.js
- client/javascripts/initializers/googleAnalytics.js
- client/javascripts/initializers/helmet.js
- client/javascripts/initializers/moment.js
- client/javascripts/initializers/react.js

即ち、以下のような規則に従ってファイルが配置されている。

1.  クライアントサイドで利用する JavaScript ファイルは client/javascripts というディレクトリに配置する
2.  Webpack などの module bundler にエントリポイントとして指定するファイルは client/javascripts/entryPoints というディレクトリに配置する
3.  初期化時に実行したい処理を含むファイルは client/javascripts/initializers というディレクトリに配置する

## Entry Points × Initializers

entryPoints ディレクトリに配置されたファイルでは、initializers ディレクトリに配置されたファイルを import することだけしか行わないことにしている。例えば、client/javascripts/entryPoints/client.js は、以下のような内容である。

// Alphabetical order  
import "../initializers/googleAnalytics";  
import "../initializers/moment";  
import "../initializers/react";

もう一つ例を挙げておくと、client/javascripts/entryPoints/server.js は、以下のような内容である。

// Fixed order  
import "../initializers/polyfill";

// Alphabetical order  
import "../initializers/helmet";  
import "../initializers/moment";  
import "../initializers/react";

client.js はクライアントサイド用のコードで、server.js は Server-Side Rendering を行うためのサーバサイド用のコードである。

初期化時に行いたい処理には、クライアントサイドだけで利用したい処理、サーバサイドだけで利用したい処理、共通で利用したい処理の三種類が存在し、読み込む順序にもそれぞれ依存関係がある。entryPoints ではこれらの関係性を、どの initializer をどの順序で import するか、というコードで表現している。

## あとがき

些細なことでもブログに書き残しておくことで、誰かの (大抵は未来の自分の) 役に立つかもしれない可能性が上がるし、次に記事を投稿するためのハードルが下がってハッピーだろうということで、普段やっている手癖みたいな事柄や、必ずしも正解とは言えないようなこと、言語化すると齟齬が発生しがちなことでも積極的に書いていこう、という気持ちでこの記事を書きました。
