---
date: 2017-09-28T23:26:48.679Z
from: medium
title: "SprocketsやWebpackerを使っていないアプリケーションでreact-railsを使う"
---

Rails プロジェクトにおいて「React を利用して Server-Side Rendering (SSR) をやるぞ」となった場合には、ライブラリの選択肢として以下の二つが筆頭に挙がることかと思われる。

*   react\_on\_rails
*   react-rails

react\_on\_rails では Browserify で bundle したコードを動作させるのには現時点では少し難があるため、現行のアプリケーションで Browserify を利用している場合、必然的に react-rails を選択することになるだろう。

さて、SSR を行う場合、サーバサイドのアプリケーションに JavaScript のファイルを読み込んでもらう必要がある訳だが、react-rails では、そのファイルの探索に Webpacker あるいは Sprockets を利用することを前提とした機能が提供されている。

そのため、それらの仕組みを使わずに自前で JavaScript のビルド方法を用意しているプロジェクトの場合、以下のようなクラスを用意し、Rails.configuration.react.server\_renderer に設定する必要がある。

Rails.configuration.react.server\_renderer = Class.new(React::ServerRendering::ExecJSRenderer) do  
  # [@param](http://twitter.com/param "Twitter profile for @param") path \[String\]  
  def initialize(path:)  
    super(code: ::File.read(path))  
  end

  # [@param](http://twitter.com/param "Twitter profile for @param") component\_name \[String\]  
  # [@param](http://twitter.com/param "Twitter profile for @param") props \[Hash\]  
  # [@param](http://twitter.com/param "Twitter profile for @param") \_prerender\_options \[Boolean\]  
  def render(component\_name, props, \_prerender\_options)  
    super(component\_name, props.to\_json, {})  
  end  
end

react-rails は、SSR 用のコードが開発中に更新された場合に再読込するための仕組みとして、設定で指定されたファイルの編集日時が更新されていると server renderer のインスタンスを作り直すという仕組みを持っている。しかし、デフォルトで用意されているプレーンな (Sprockets や Webpacker に依存しない) server renderer である ExecJSRenderer では、コンストラクタの引数に JavaScript のコードの中身を直接渡す設計になっているため、この仕組みが上手く働かない。そのため、これを継承し、コンストラクタ内部でファイルを読み込むようなコードにする必要がある。

また、Sprockets 環境用に用意されている BundleRenderer とは違い、素の ExecJSRenderer では props を JSON 形式でエンコードされた文字列として渡す必要があるため、この部分もケアするように #render の実装を変更している。
