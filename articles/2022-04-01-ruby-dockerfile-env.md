---
title: RubyのDockerイメージでよく使う環境変数の整理
---

Ruby向けのDockerイメージで使いがちな環境変数について整理する。

## GEM_HOME

RubyGemsに対して、どのディレクトリにGemをインストールするかを指定する環境変数。例えば `gem install foo` を実行すると、この環境変数で指定したディレクトリにfoo gemがインストールされる。

Dockerでありがちな作戦として、/gem のような適当なパスにデータボリュームをマウントしておいて、そこにGemを永続化させておくというのがある。このときGEM_HOMEを /gem に指定しておくと、`gem install bundler` を実行したときそこにBundlerがインストールされ、更に /gem/bin/bundle も用意される。

## BUNDLE_PATH

Bundlerに対して、どのディレクトリにGemをインストールするかを指定する環境変数。例えば `bundle install` を実行すると、この環境変数で指定したディレクトリに、Gemfileで指定されているGemとその依存Gemがインストールされる。

GEM_HOMEの項目で説明した話と同様に、BUNDLE_PATHを /gem に指定しておくと、`bundle install` でそこに各種Gemがインストールされるようになり、都合が良い。

## BUNDLE_BIN

Bundlerに対して、実行ファイルを追加で配置するディレクトリを指定する環境変数。

例えばBUNDLE_BINを /gem/bin と指定し、Gemfileに `gem 'rubocop'` を含みつつ `bundle install` を実行すると、/gem/bin/rubocop が用意される。これにより `/gem/bin/rubocop` のように実行したり、環境変数PATHに /gem/bin を含めておいて `rubocop` と実行したりできる。もちろん、この仕組みを使わず `bundle exec rubocop` のように実行しても良い。

## BUNDLE_APP_CONFIG

Bundlerに対して、設定ファイルの配置されるディレクトリを指定する環境変数。

例えば `bundle config set --local path vendor/bundle` とか、1系の頃のBundlerであれば `bundle install --path vendor/bundle` のように指定すると、このディレクトリのconfigというファイルにパスに関する設定が書き込まれ、`bundle install` の実行時に利用されるようになる。環境変数で指定されなかった場合は、カレントディレクトリの .bundle というディレクトリが利用される。

DockerHub公式のRuby向けDockerイメージでは、BUNDLE_APP_CONFIGが /usr/local/bundle に設定されているので、これを知らないとその挙動に驚かされがち。

## Dockerfileの設定例

ここまでの話を元に、開発環境で使うRuby向けのDockerfileの設定例を用意してみる。

```
# Note that we use data-volume mounted on /gem to persistent gems.

# Let RubyGems install gems into /gem and install executables into /gem/bin.
ENV GEM_HOME=/gem

# Let Bundler install gems into /gem.
ENV BUNDLE_PATH=/gem

# Let Bundler install executables into /gem/bin.
ENV BUNDLE_BIN=/gem/bin

# Let shells search executables from /gem/bin.
ENV PATH="/gem/bin:${PATH}"
```

利用すべきBundlerのバージョンはアプリケーション側のGemfile.lockで指定されているので、DockerfileにBundlerのインストール工程を含むことは避け、アプリケーション側の `bin/setup` 等の環境構築用スクリプト内でそれをやってもらう、という想定をしている。
