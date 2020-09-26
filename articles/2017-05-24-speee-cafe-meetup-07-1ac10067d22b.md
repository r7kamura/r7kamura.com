---
date: 2017-05-24T05:33:12.974Z
from: medium
title: "Speee Cafe Meetup #07 に参加した"
---

![[https://speee.connpass.com/event/56197/](https://speee.connpass.com/event/56197/) より](https://cdn-images-1.medium.com/max/800/1*GtOI4D1K-Gxjnx5W8GJenA.png)
[https://speee.connpass.com/event/56197/](https://speee.connpass.com/event/56197/) より

出張でしばらく東京に滞在していて、たまたま予定も席も空いていたので参加できた。雑談などで得た技術情報についてまとめておく。

[Speee Cafe Meetup #07 (2017/05/23 19:00〜)](https://speee.connpass.com/event/56197/)

## TypeScript, Flow

最近会社で開発している Web アプリケーションに TypeScript を導入したという話を聞いたので、その辺に居た人を交えて、Flow と TypeScript を比較するとどういう感想ですか、という会話をした。あまり詳しくないという人向けに説明しておくと、どちらのプロジェクトも、JavaScript の文法に手を加えて静的な型検査を行えるようにしようというものである。

- [Flow: _A Static Type Checker for JavaScript](https://flow.org/)
- [TypeScript - JavaScript that scales.](https://www.typescriptlang.org/)

両方の運用経験がある訳ではないのでという前置きのもと、TypeScript の利点を挙げるならばこの辺りだ、という話を聞いた。

曰く、「Microsoft における TypeScript の方が、Facebook における Flow より力を入れていそう」「TypeScript の方が、AST を操作する API があって、拡張性が高そう」「TypeScript の方が、サポートしているライブラリの数が単純に多そう」「Flow が OCaml で書かれているので、TypeScript で書かれている TypeScript と比較すると、どうしても Contribute しにくい」「JavaScript の文法と混同しがちな部分が多いと困る」「既存のコードには Flow の方が段階的に導入しやすい」という意見が挙がっていた。

## Server-Side Rendering on Rails

Rails アプリで SSR (Server-Side Rendering) を行うにあたっては、幾つか選択肢があり、例えば react-rails、react\_on\_rails、hypernova などの有力な候補がある。

例えば自分の開発している amakan というサービスでは、react\_on\_rails を使っている。これは内部で Ruby の V8 エンジンを利用して JavaScript のコードを評価するというもので、Web ブラウザに返す HTML をするために利用している。

[amakan books](https://amakan.net/)

今回の Meetup では、hypernova を利用した Rails アプリを運用している人と話ができた。hypernova を知らない人向けに説明しておくと、これは Node.js のプロセスを別途起動しておいて、Rails のプロセスと通信して JavaScript のコードを評価するというもの。

速度面で言うと、Ruby の V8 エンジンで処理しようが Node.js のプロセスと通信して処理しようが、それほど処理時間に違いは認められない。Node.js が JavaScript を処理するのにそれほど苦労しないだろうというのは容易に想像できるけれど、Ruby の V8 エンジンで処理するというと「時間掛かるんじゃないか？」と思う人も多いかもしれない。しかし、自分が運用してみた限りでは意外と問題にならないくらい速い。そこは amakan を運用してみて初めて分かったところだった。

react\_on\_rails でつらいのは、JavaScript のコードでエラーが発生したときのスタックトレースが非常に見づらく、結果的にデバッグしづらいというところ。hypernova ではその辺りの問題が解消されているというのが良い。

本番環境で動かすときには、インフラ的には Node.js のプロセスはどう配置するべきなのかと考えていたけれど、現在は Rails 用のサーバプロセスと同じホストに Node.js のプロセスが配置されるようにしていて、ホスト内でしか通信が発生しないような設計にしているとのことだった。

## Scala, Go

「最近、社のコードは徐々に Scala から撤退しているんですよ」という話を聞いた。理由として一番に挙がったのは「我々は Scala が必要になるほど難しいアプリケーションを開発していない」とのこと。「我々が想定していたよりも、コンパイル速度というものは開発速度に強く影響を及ぼすらしい」という意見も挙がっていた。

では「最近はどのプログラミング言語で書かれることが多いのか」と尋ねたところ、「Go で書かれるケースが結構増えてきている」とのことだった。「Go は本番環境で動かせるアプリケーションをつくるまでの道のりが短いので、安心してコードを書ける」という意見も聞いた。

## webapp-revieee

Speee の方が OSS として開発されている、webapp-revieee という Web アプリケーションの話を聞いた。

[speee/webapp-revieee](https://github.com/speee/webapp-revieee)

検証環境が決められた個数 (大抵は1つとか) しか存在しないと、「いま検証環境使っていいですか？」といった会話が起こりやすく、結果としてなかなか検証が行われにくい雰囲気が醸成されてしまうということを背景に、Heroku の review-apps のような仕組みを AWS の API で構築するようなものをつくろう、というのが webapp-revieee の解決しようとしている課題であるとのこと。

少しソースコードを読んだので、webapp-revieee の中身について説明しておく。webapp-revieee は HTTP のエンドポイントをひとつだけ持つ Ruby 製の Web アプリで、GitHub の特定のリポジトリの Webhook として、そのエンドポイントの URL を登録する。GitHub では、Pull Request がつくられたり閉じられたりすると、登録されている Webhook の URL に POST リクエストを送るようになっているので、これで特定のリポジトリで Pull Request が Open/Close されるたびに任意の処理を行える。

Pull Request が Open されると、ECS の Web API を利用して Docker コンテナを起動し、起動させた Docker コンテナの情報を DB に保存しておき、その URL を Pull Request にコメントする。ECS は AWS の EC2 インスタンス群をクラスタとして管理し、その中で Docker コンテナを動かすための管理サービス。DB に情報を保存しているのは、後々 Pull Request が Close されたときに Docker コンテナを削除するためだと思われる。

折角 Web アプリとして提供しているので、現在起動中のコンテナ一覧とその URL を表示するような画面も提供されていると便利かもしれない。作者によるとまだまだβ版という状態とのこと。

そういえば前職の Cookpad では、任意のブランチを push すると簡単に検証環境を用意できる仕組みがあって、それによって検証したり検証してもらったりするのが捗っていた。FastCGI のようなサーバで、リクエストを送られたらしばらくの間リクエストを待ち受けていて、しばらく使われなくなると眠りにつくというもので、効率の良い仕組みだったと思う。

Docker コンテナで Web アプリを動かす場合にも、Fast コンテナとでも呼ぶような、リクエストがあればしばらく起動しておいてレスポンスを返すような仕組みがあると便利そうだ。
