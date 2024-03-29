---
title: RuboCopのStyle/RegexpLiteralを改善するPull Requestを送ったときの話
---

<https://github.com/rubocop-hq/rubocop/pull/6457> を書いたときの話。

## Ruby の正規表現リテラル

Ruby には正規表現オブジェクトを生成するためのリテラルがあって、例えば「foo を含む文字列」と一致させるには /foo/ というように書ける。リテラルというのは、プログラミング言語において、値を直接コード内に記述した文法上の単位のことですね。
例えば <https://patreon.com/r7kamura> のような Patreon の URL に一致させたい場合は、`/https://\/\.patreon\.com/.+/` のような感じで、エスケープのせいで少し分かりづらい表記になってしまう。正規表現リテラルの開始記号と終了記号にスラッシュを使うことになっているので、スラッシュを含む文字列と一致させたい正規表現を記述したいときは「これは正規表現リテラルを囲むためのスラッシュじゃないよ」ということを伝える必要があって、「`\/`」のように書かないといけない。

そこで、Ruby では `%r|https://patreon\.com/.+|` のような書き方もできるようになっている。%r に続いて何か文字を入れると、その文字が開始記号と終了記号になる。しかも `%r<https://patreon\.com/.+>` のように、開始記号として開き括弧を与えた場合、終了記号は対応する閉じ括弧になってくれる。

## RuboCop の Style/RegexpLiteral

RuboCop という Ruby 向けの Linter があって、例えば揃っていないインデントや、良くない変数名が使われているコードを検査してくれたり、可能な限り誤りを自動修正してくれたりする。

RuboCop の Lint ルールは色々あるんだけど、その1つに、Style/RegexpLiteral というルールがある。これは正規表現リテラルの書き方を検査するもので、その機能の一部として「スラッシュを含む場合しか %r を使うべきではない」ということを検査してくれる。なんでもかんでも %r を使うんじゃなくて、普通は /foo/ のようにスラッシュを使って正規表現リテラルを書きましょうねということである。

## r7kamura の仕事と Style/RegexpLiteral
自分はフリーランスとして、Rails や Ruby をアップデートしながらプロジェクトのリファクタリングを専門的に行う仕事を請けている。現在も Rails の仕事を募集しているので、もし縁があれば Twitter でお声がけください。で、その仕事の中で、プロジェクトに RuboCop を導入したり、導入されているけれどほとんどのルールが無効化されていたり放置されたりしている状況を改善したり、という作業も行っている。

その作業の中で、一時的にプロジェクト内で無効化されていた Style/RegexpLiteral を有効化して、違反箇所を RuboCop で自動修正しようとしたところ、幾つか自動修正できない箇所があった。どうやらスラッシュを含む正規表現リテラルは自動修正できないらしく、調べてみるとこの問題は <https://github.com/rubocop-hq/rubocop/issues/5514> で報告されていた。

## RuboCop に送った Pull Request の内容

調べてみた感じでは、「スラッシュが含まれている場合はエスケープが面倒だから対応していないのだろう」と思われたので、%r を導入する場合には `\/` を `/` に、%r を外す場合には `/` を `\/` に書き換えるような処理を追加しつつ、スラッシュが含まれている場合でも自動修正を許可するように変更してみた、というのが以下の Pull Request。

<https://github.com/rubocop-hq/rubocop/pull/6457>

## 実装に対する不安

この文章を書いているときに不具合に気付いたんだけど、%r/foo/ というような書き方もできるので、この場合に限っては /foo/ と同じエスケープ規則を適用しないといけない！テストを追加しつつ Pull Request も修正しておこうと思います。

こういう感じの気付いていないケースがまだありそうで、少し不安に感じている。自動修正って大量の違反を処理していくことがほとんどなので、修正後の差分を逐一確認するのは結構しんどい作業だったりして、変換に不具合があっても気付かないまま git commit してしまうことが多い。自分のせいで誰かのコードに不具合が自動挿入されてしまうかもしれないのは大変怖いので、もう少しテストケースを増やしたり、他に怖いケースが存在しないか考えた方が良いかもしれない。例えば、正規表現リテラルの中の文字列展開の中に `\/` が含まれていた場合のことなどを考えていました。

## RuboCop の自動修正ロジックの変更方法
RuboCop では各ルールごとに1つのクラスが用意されているようで、例えば Style/RegexpLiteral だと RuboCop::Cop::Style::RegexpLiteral というクラスが対応している。このクラスに #autocorrect というインスタンスメソッドが実装されていれば、--autocorrect オプションを付けて RuboCop を動かしたときに処理が呼び出されるようです。なので、今回書いた Pull Request では RuboCop::Cop::Style::RegexpLiteral#autocorrect の内容を変更した。

`#autocorrect` には node という引数が渡されるようで、ここには違反検査時に報告された node が渡ってくるようです。なので、ファイル全体を表すノードが渡ってきてしまうとかいう訳ではなくて、ここでは正規表現リテラルを表すノードが渡ってくる。

`#autocorrect` は「引数に corrector を取りながら変換を行う Proc」を返せば良いことになっているようで、今回変更した #autocorrect でも lambda do ... end というリテラルを利用して Proc を生成して返しています。変換は厳密な指定方法になっていて、「このノードの何文字目から何文字目までをこの文字列で置き換える」という情報を corrector.replace メソッドの引数として形式で指示する必要があるので、少し難しく感じるかも。

## RuboCop のコードについての雑感

RuboCop のコードでは1つのメソッドの ABC 複雑度 (コード内に含まれる Assign, Branch, Condition を元に計算される複雑度) が一定以上だと怒られるようになっていて、今回も素朴に実装を追加したところひどく怒られたので、適当にそれぞれの処理を細かいメソッドに分割した。

現状の RuboCop の設計だと、生存期間の長い Cop クラスのインスタンスに対して autocorrect(node) を呼び出すことで auto-correction を実現するようなインターフェースになっているけれど、これだとインスタンス変数が活用できず、インスタンスメソッドを関数代わりに利用する手続き型的なコードになりがちで窮屈なので、「1つのノードに対する1度の変換」を表すクラスがあると良いのかなと考えていた。
