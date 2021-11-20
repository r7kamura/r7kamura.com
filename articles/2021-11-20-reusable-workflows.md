---
title: Reusable workflows
---

GitHub ActionsのReusable workflowsの利用例。

workflowsというリポジトリに、自分がよく使うWorkflowをまとめている。

- <https://github.com/r7kamura/workflows>

例えば、次のリポジトリから利用している。

- <https://github.com/r7kamura/imgur_openapi-rs>
- <https://github.com/r7kamura/imgurian>
- <https://github.com/r7kamura/r7k>

利用しているWorkflowの内容は次のようなもの。

- GitタグからGitHub Releaseを用意する
- RustでLinterやテストを実行する
- RustでCargo.tomlを見てGitのタグを発行する
- Rustでcrateを更新する
- Rustでバイナリを生成してGitHub Releaseに紐付ける

例えば、利用する側では次のようなコードを書くことになる。

```yaml
on:
  pull_request:
  push:
    branches:
      - main

jobs:
  test:
    uses: r7kamura/workflows/.github/workflows/rust-test.yml@main
```

コピペを防げたり、何か方針を変更したいときに一気に変更を適用できたりと、何かと利点が多い。これまでも、単一のWorkflowごとにリポジトリを用意することで再利用できる仕組みはあったが、Reusable workflowでは1つのリポジトリで何個もWorkflowを公開できるので、より気軽にWorkflowを再利用できるようになったと思う。
