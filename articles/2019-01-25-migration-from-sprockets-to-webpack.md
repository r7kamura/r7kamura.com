---
title: Sprocketsから移行するときのWebpackの設定
---

Rails アプリでの assets 管理を Sprockets から Webpack に移行できないか調査するために、ひさしぶりに Webpack の設定を一から用意する機会があったので、設定についてまとめておこうと考えました。

<https://gist.github.com/r7kamura/46a28a8c35174ec69989d0d7bfc3fc79> にコード例を載せておきます。これを題材にこの記事で解説を書いていきます。また Sprockets からの移行を主眼としているため、出力されるファイルの形式などを大きく変えずに実装手段だけ変えないといけないという厳しい制約があり、そういった状況での解決手段を模索しているということを考慮の上で記事の内容をお読みください。

## Sprockets のおさらい

まずは Rails アプリにおいて Sprockets が何をしてくれているかのおさらいです。

開発環境で Sprockets を利用している場合は、変換後のファイルが HTTP リクエストで要求されたときに初めてそのファイルの変換が行われます。例えば GET /assets/application.js にリクエストが送られると、そこで初めて app/assets/javascripts/application.js が変換されるという感じになっていると思います。ちなみに、対象ファイルや内部で利用しているファイルに変更が無い限り、変換結果はキャッシュされています。

本番環境にファイル群をデプロイする際は、デプロイ作業中に rails assets:precompile というコマンドが実行され、これによって app/assets などに含まれているファイルが変換され、public/assets というディレクトリ内に変換されたファイルが出力されます。

どのファイルが変換対象となるのか (Webpack で言うところの entry) が Sprockets ではどう選出されるのかという話ですが、Rails.configuration.assets.paths で指定したパス群に存在するファイルのうち、Rails.configuration.assets.precompile で指定したパターンのいずれかに一致するものが変換対象として認識されます。例えば、デフォルトの状態では app/assets/javascripts が assets.paths に登録されており、application.js という名前が assets.precompile にパターンとして登録されているので、app/assets/javascripts/application.js が変換されることになります。app/assets/stylesheets/application.css についても同様です。他に、app/assets/images 内の .jpg や .png などの拡張子を持つファイルや、app/assets/fonts 内の .eot や .woff  などの拡張子を持つファイルも、同様にデフォルトで変換対象になっています。

また変換時、Sprockets は public/assets/.sprockets-manifest-[hash].json のようなファイルを生成します。これの中身は、{ "application.js": "application-[hash].js" } のようにハッシュ値を持たないファイルパスとハッシュ値の付いた public/assets ディレクトリからの相対パスという key-value のペアを JSON 形式でエンコードしたものです。プログラム中から asset_path("application.js") のように呼び出された場合に適切なパスを返すために、このファイルの内容が利用されています。キャッシュ戦略のための措置ですね。

## Webpack 版でのディレクトリ構成

Webpack 版では、プロジェクトのルートディレクトリに client というディレクトリをつくり、ビルド対象となるファイル群や、Webpack の設定ファイルなど、Node.js で必要となるファイルは基本的に全てそこに入れることにしました。mv app/assets client ということですね。

文章では伝わりづらいかと思い、Gist の README にディレクトリ構成をまとめておいたので、そちらを参照してください。

## Webpack の設定ファイルの分割

ここからは Webpack の設定の話になります。

Webpack の設定のうち、mode、output、plugins の項目は開発環境向けのものと本番環境向けのものとでは異なる設定になるだろうと思ったので、webpack.config.{common,development,production}.js の3つの設定ファイルに分割して管理することにしました。環境変数 NODE_ENV で細かく条件分岐していく方法もあるかと思いますが、ファイルごと分ける方が分かりやすいかなということでこうしています。

開発環境と本番環境とでは、今回の例では主に以下の点で設定に違いが出ます。

- ファイル名にハッシュ値を含めるか
- manifest ファイルを生成するか

Webpack の公式サイトに、本番環境向けの設定ファイルの分割方法として同じ方法が紹介されています。設定ファイルを統合するために webpack-merge というライブラリを利用していますが、これもここで紹介されているものです。

<https://webpack.js.org/guides/production/>

## entry

フォントや画像、JavaScript、CSS といった変換対象があるということを Webpack でどう表現するかという件ですが、JavaScript と CSS については Webpack の entry の項目で表現し、フォントと画像については別途 copy-webpack-plugin で変換することにしました。全部 entry で表現することもできるとは思います。

entry で付けた名前 (Object の key) を利用して、[name].js のように出力されるファイル名を設定していますが、application.js と application.css といったように同じ名前で別の種類のファイルを同時に指定したい場合は、配列でそれらを一緒に指定しています。

## CSS のビルド

Webpack 4 だと、CSS をファイルとして出力するには mini-css-extract-plugin を利用します。他の方法として、extract-loader と file-loader を併用しても上手くいくかもしれません。

Webpack 4 では、{ foo: './stylesheets/foo.scss' } のように指定した場合、空の foo.js が生成されるという問題があります。これを解決するために、webpack-fix-style-only-entries というプラグインを利用して空のファイルをビルド結果から取り除いています。

## フォントと画像のビルド

フォントと画像は今のところコピーするだけで良かったので、copy-webpack-plugin を利用しました。但し、copy-webpack-plugin でビルドしようとすると後述する manifest ファイルに含める key にハッシュ値が含まれてしまうという問題があるため、manifest-plugin 側の callback  を利用して無理矢理解決しています。

ところで copy-webpack-plugin を利用するとき、変換対象の指定方法として glob ではなくディレクトリで指定しないと、新しくファイルを追加したときに変換対象にならないので、少し注意が必要そうです。

## manifest

Webpack 移行と共にキャッシュ戦略が変わってしまうようなことは避けたいので、Webpack でも Sprockets 相当の manifest ファイルを用意する必要があります。webpack-manifest-plugin というプラグインを利用することで、ほぼ同等の manifest ファイルを用意できます。

## Docker for Mac

Docker for Mac を利用して Docker コンテナ上で開発を行っている場合、ファイル更新時にファイルイベントが発火しない問題があります。Rails だと Rails.configuration.file_watcher を  ActiveSupport::EventedFileUpdateChecker から ActiveSupport::FileUpdateChecker に変えることで polling で監視するように変えるのが定石でしたが、Webpack で --watch を利用する場合にも watchOptions で polling で監視するように変更する必要がありそうです。

## デプロイ

デプロイ時にこれまで Sprockets が行っていた処理を npm run build で差し替える必要があると思いますが、これは assets:precompile というタスクを npm run build が行われるように差し替えれば良いと思います。

例えば、AssetSync などのように assets:precompile にフックして変換後に S3 にファイルをアップロードする処理が元々仕込まれていたりするので、それらを壊さないようにするためという目的もあります。また、Sprockets を利用しなくなったからといって sprockets を require しないようにすると、assets:environment と assets:precompile というタスクが存在することを前提に実装されている Rails のタスク群が動かなくなるので、どのみちこの名前を持つ空のタスクを用意してあげる必要があります。
