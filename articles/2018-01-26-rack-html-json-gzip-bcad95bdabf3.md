---
date: 2018-01-26T11:53:59.985Z
from: medium
title: "Rack で HTML や JSON などを gzip 圧縮してから返すようにする"
---

rack gem に Rack::Deflater という Rack middleware が含まれているので、これを利用するだけで良い。例えば Rails であれば、以下のように middleware に組み込むだけで済む。

注意点としては、Rack::MiniProfiler を利用している場合は、こいつが勝手に Accept-Encoding ヘッダを変更してしまうので、Rack::MiniProfiler より外側に Rack::Deflater を配置する必要がある。

動的コンテンツに対する gzip 圧縮の有利不利に関しては論点があるだろうけれど、自分の運用していたり開発に携わったりしているサービスでは、導入しておく方がメリットが大きいことが多い。
