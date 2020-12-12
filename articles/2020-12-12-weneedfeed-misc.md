---
title: Weneedfeedの運用小話
---

[Weneedfeed](https://github.com/r7kamura/weneedfeed)を運用している中で得られた情報を書き留めておく。

主にGitHub Actionsや、RSSフィードに関する話が多く含まれる。Weneedfeedというのはウェブページからフィードを生成するツールで、これについては過去にも[記事](/articles/2020-11-15-weneedfeed)に書いた。

## GitHub Actions

「GitHubのリポジトリにYAMLファイルを置くだけでフィード群が用意される」という状態を実現するために、GitHub Actionsを使っている。具体的には、次の処理を定期的に実行している。

1. YAMLに記載された情報を元にフィード群を生成する
2. gh-pagesブランチにpushする

この内、1の処理をやるために[weneedfeed-action](https://github.com/r7kamura/weneedfeed-action)を用意している。2の処理は[actions-gh-pages](https://github.com/peaceiris/actions-gh-pages)でやっている。GitHub Actionsにcrontab形式でスケジュールを指定する仕組みがあるので、定期実行にはこれを使っている。

## Actionのバージョン管理

GitHub Actionsでは専用のリポジトリを持って管理することが推奨されているので、ライブラリとそれを使うactionのリポジトリは分けている。

weneedfeedのバージョンを更新するたびに、それを参照するようにweneedfeed-actionも更新している。変更サイクルが異なる場合もあるので、それぞれのバージョンを同一にしたりはしていない。一方でパッチバージョンが上がれば、他方でもパッチバージョンを上げる、といった運用にはしている。

GitHub Actionsでは、`uses: r7kamura/weneedfeed-action@v3` のようにメジャーバージョン由来のタグを指定して利用してもらう慣習がある。GitHub Actionsがバージョンの計算を賢くやってくれる訳ではないので、x.y.zを新しくリリースするたびに `git tag vx.y.z` と `git tag vx --force` でタグを新規作成・上書きし、`git tag --push --force` でリポジトリ側のタグを更新することになる。

GitHubリポジトリのReleasesの機能を利用すると、GitHub Marketplaceでactionが自動的に公開される仕組みとなっている。新しくリリースするとGitHub Marketplace側で最新版として表示されるバージョンが更新されるため、actionのバージョンを更新するたびに新しいリリースを発行することも忘れてはいけない。

## 利用例

以下はWeneedfeedの利用例。[マンガクロス](https://mangacross.jp/)、[サンデーうぇぶり](https://www.sunday-webry.com/)、[webエース](https://web-ace.jp/)で配信中の各作品単位でのRSSフィードをそれぞれ日本時間零時過ぎに更新している。

- [weneedfeed-mangacross](https://github.com/r7kamura/weneedfeed-mangacross)
- [weneedfeed-sundaywebry](https://github.com/r7kamura/weneedfeed-sundaywebry)
- [weneedfeed-webace](https://github.com/r7kamura/weneedfeed-webace)

利用例が無いとライブラリが育たないので、まともなユースケースとしてウェブ漫画の更新確認を利用例としてみている。

## 不正なHTML

NokogiriというライブラリでHTMLをパースした上でCSSセレクタやXPathを利用して要素を探索しているのだけど、不正なHTMLが返されたときに、意図通りで無い探索結果が得られることがある。この問題に対処するために、一見冗長なクエリを書くことがたまにある。そして不正なHTMLが返ってくることは現代でも案外多い。

## JSON対応

WeneedfeedはHTMLではなくJSONを返すエンドポイントにも対応していて、この場合はJSONをXMLに変換した上で要素を探索している。JSON to XMLなライブラリは色々あるが、要素名の生成方法が異なることが多い。プロパティ名のsnake_caseが用いられたり、chain-caseが用いられたりする。配列の場合、子要素の名前は決め打ちでelementだったり、親要素の名前を単数形に変換したものを用いたりする。

ところで、過去にJSON対応したときに不具合を入れてしまったことがある。JSON to XMLの変換をやるようになったときに、HTMLもXMLもどちらもXMLとしてパースするようにしてしまったのだが、後々「HTMLのパース結果から探索して得られるURLの内容が何かおかしい」という状況になるまでこれに気付かなかった。具体的には、画像のURLを取得したときに、URIクエリの `&` 以降の文字列が無くなってしまう。そこで「`&` のエスケープ周りの扱いが何かおかしいのではないか」ということに思い至り、パース時の不具合であることに気付いた。明らかなエラーが発生しない問題というのはなかなか気付きづらい。

## フィードの画像

[Feedly](https://feedly.com/)や[Inoreader](https://inoreader.com/)などのフィードリーダーでは、それぞれの記事のサムネイル画像を、そのリンク先から自動的に判別して取得してくれる機能がある。具体的には、OGPで示された画像のURLなどを参照しているように見える。

フィードには記事の画像を示す方法もあり、RSS 2.0では配信物に添付されているメディアを示すenclosure要素が利用できる。enclosure要素では添付されているメディアのサイズを示すlength属性が必須だが、これは値を0にしても問題無く動いてくれるようだ。この値0の方法は[少年ジャンプ＋](https://shonenjumpplus.com/)でも使われていた。少年ジャンプ＋は各作品ごとのRSSフィードを配信していて本当にえらい。

enclosure属性で画像を示すことで、FeedlyとInoreaderでサムネイル画像が表示されるようになることは確認した。但し、例えばFeedlyではキャッシュが強く効いていて、過去に取得された記事のサムネイル画像を更新してくれたりはしない。

上の話は記事単位でのサムネイル画像の話だったが、フィード単位での画像には、例えばRSS 2.0だとchannel要素のlink要素、つまり配信元ウェブページの画像が使われる。apple-touch-iconやfaviconが使われるらしい。Inoreaderではapple-touch-iconが優先されていた。Feedlyでは、`https://www.google.com/s2/favicons?domain=...` が利用されていた。

## FeedlyとInoreader

フィードリーダーとしてFeedlyとInoreaderを利用しているので、比較用に個人的な感想を書いておく。

Feedlyは見た目が小綺麗だが、こういったツールの検証用途としては色々と情報が覆い隠されている・透明性が無いと感じられる部分も多く、使いづらいことが多い。現在でも不具合が多い印象で、更にサポートとのやり取りの窓口が開かれておらず、新しく追加した全てのフィードのタイトルが空文字列になってしまうという不具合が前に起きた際は、最終的にTwitterの@feedlyアカウントにDMを送ってやりとりして解決することになった。

Inoreaderは見た目が無骨だが、細かい情報まで表示してくれることが多く、また実装も丁寧な印象がある。サポートとの連絡もやりやすく、どちらかというと技術者フレンドリーな印象だ。少なくともこういったツールの検証用途ではInoreaderの方が分があるだろう。
