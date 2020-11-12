---
title: RuboCop 1.3.0、VSCodeのaddSelection
---

雑記だ。

## RuboCop 1.3.0

次のGem群を利用しているプロジェクトで、RuboCop関係のGemを全て最新版に上げた。

- guard-rubocop (1.3.0 to 1.4.0)
- rubocop (0.93.1 to 1.3.0)
- rubocop-rails (2.8.1 to 2.8.1)
- rubocop-rspec (1.44.1 to 2.0.0)

rubocop 1.0.0が出たときに最新版にしようと試したことがあるが、当時はguard-rubocopとrubocop-rspecが対応しておらず、すぐに対応しようとすると効率が悪そうだったので後回しにしていた。今になってその問題が解決されていたので、改めて最新版に上げることにした。

件のプロジェクトではrubocopは全く問題が無く、どちらかと言うとrubocop-rspec 1.44.1から2.0.0に上げたことによる非互換性への対処の方が面倒だったが、[Upgrade to Version 2.x :: RuboCop Docs](https://docs.rubocop.org/rubocop-rspec/2.0/upgrade_to_version_2.html)というガイドもあり、実のところ大した変更でもなかった。

## VSCodeのCtrl+D

現在カーソル下にある単語かあるいは現在選択中の単語を同ファイル内から検索し、順にその末尾にマルチカーソルを足していってくれるというeditor.action.addSelectionToNextFindMatchというコマンドがVSCodeにあり、Windows版ではCtrl+D、Mac版では確かCommand+Dのショートカットキーにこれが割り当てられている。

マルチカーソルは本当によく使っており、このショートカットキーもほぼ必須な機能として毎日便利に使っている。便利だという気持ちをどこかに書いておきたかった。
