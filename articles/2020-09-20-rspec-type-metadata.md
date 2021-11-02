---
title: RSpecの不要なtype
---

RSpecを使うテストコードから不要なtypeを取り除く作業をした。

`config.infer_spec_type_from_file_location!` を指定することで不要になる `metadata[:type]` を取り除こうというスクリプト。

```ruby
require 'pathname'

%w[
  api spec/requests
  controller spec/controllers
  feature spec/features
  helper spec/helpers
  integration spec/requests
  job spec/jobs
  mailer spec/mailers
  model spec/models
  request spec/requests
  routing spec/routing
  system spec/system
  view spec/views
].each_slice(2) do |type, directory_path|
  Pathname.glob("#{directory_path}/**/*_spec.rb").each do |pathname|
    pathname.write(
      pathname.read.gsub(/, type: :#{type}/, '')
    )
  end
end
```

sedを使いながらシェルスクリプトで書いても良かったけど、RSpecで書かれたコードということで対象読者的にRubyで書くことに。

以下は不要な `metadata[:type]` の例。

```ruby
# spec/models/user_spec.rb
RSpec.describe User, type: :model do
```

以下のように置換される。

```ruby
# spec/models/user_spec.rb
RSpec.describe User do
```

---

RSpecのディレクトリ構成に関するドキュメントは以下から。

<https://relishapp.com/rspec/rspec-rails/docs/directory-structure>

typeとディレクトリパスの対応関係の定義は以下から。`|` を使って1つのStringに構造を詰め込んでいるところが正直言ってダサいと思う。

<https://github.com/rspec/rspec-rails/blob/e5cbfde4635fca69f9fe0cafc4df7a075a4ce990/lib/rspec/rails/configuration.rb#L25-L40>
