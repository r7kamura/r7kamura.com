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

コピペを防げたり、何か方針を変更したいときに一気に変更を適用できたりと、何かと利点が多い。
