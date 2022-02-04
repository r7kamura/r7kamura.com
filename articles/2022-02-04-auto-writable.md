---
title: ActiveRecord::AutoWritable
---

ActiveRecordで書き込み系のメソッドを呼んだときに自動的に書き込み用DBに接続する拡張をつくった。

- <https://github.com/r7kamura/active_record-auto_writable>

```ruby
ApplicationRecord.connected_to(role: :reading) do
  Post.create(attributes)
end
```

とかやると、普通は読み込み用DBに対してINSERTクエリを発行してしまう訳だが、この `create` 起因で呼び出されるメソッドに細工して、自動的に `role: :writing` で接続するという仕組み。`create` だけでなく、`destroy` や `update` など、基本的なすべての書き込み系のメソッドに対してその細工を加えている（つもり）。

つくった背景は、switch_point gemの同様の機能から移行するため。

- <https://github.com/eagletmt/switch_point#auto_writable>
