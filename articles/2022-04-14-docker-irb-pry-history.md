---
title: DockerでIRBやPryの履歴を記憶
---

DockerでIRBやPryを利用するときにも入力したコードの履歴を記憶するよう設定する機会があったので、あらためて整理しておく。

大まかな作戦としては、/usr/local/history という適当に考えたパスにDockerのデータボリュームをマウントし、更に適当に考えた次のファイルパスに履歴を書き込ませる作戦でいく。

- /usr/local/history/.irb_history
- /usr/local/history/.pry_history

IRBはデフォルトでは ~/.irb_history に履歴を書き込む。

> デフォルトで、実行結果の履歴1000件が ~/.irb_history に保存されます。
> <https://docs.ruby-lang.org/ja/latest/library/irb.html>

IRBは起動時にカレントディレクトリの .irbrc というファイルを実行してくれるので、ここに設定を変更する旨のコードを書く。

`IRB.conf[:HISTORY_FILE]=` を使うと履歴の保存先を設定できる。今回は /usr/local/history/.irb_history というパスを指定したいが、このパスはDocker環境のために用意するパスなので、ここにハードコードするのは望ましくない。そこで、環境変数IRB_HISTORY_PATH経由で指定する。Dockerを利用しない環境に影響を及ぼさないために、この環境変数が与えられなかった場合には設定を変更しないよう配慮しておく。

```ruby
# .irbrc
path = ENV['IRB_HISTORY_PATH']
if path
  IRB.conf[:HISTORY_FILE] = path
end
```

最近ではIRBも機能が増え、ステップ実行などの機能は普段利用しないので積極的にPryを使うことも少なくなったが、利用しているプロジェクトも多いのでPryについても設定しておく。

Pryはデフォルトでは ~/.local/share/pry/pry_history に履歴を書き込む。

- <https://github.com/pry/pry/blob/v0.14.1/lib/pry/history.rb>

Pryは起動時にカレントディレクトリの .pryrc というファイルを実行してくれるので、ここに設定を変更する旨のコードを書く。

`Pry.config.history_file=` を使うと履歴の保存先を設定できる。0.13未満のバージョンだと `Pry.config.history.file=` になる。設定内容は .irbrc と同様で、環境変数PRY_HISTORY_PATHを使う。

```ruby
# .pryrc
path = ENV['PRY_HISTORY_PATH']
if path
  Pry.config.history_file = path
end
```

これで、Dockerコンテナを起動するときにデータボリュームと環境変数を指定すれば完成。docker-compose.ymlで管理する場合は、重要な行だけ抜粋すると次のようになる。

```yaml
# docker-compose.yml
services:
  rails:
    environment:
      IRB_HISTORY_PATH: /usr/local/history/.irb_history
      PRY_HISTORY_PATH: /usr/local/history/.pry_history
    volumes:
      - history:/usr/local/history
volumes:
  history:
```
