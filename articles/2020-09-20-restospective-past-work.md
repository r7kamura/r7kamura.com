---
title: 最近のRails関係の仕事内容
---

RubyやRailsのアップグレードを主なマイルストーンとしつつ全体的に開発体験を良くしていくというタイプの仕事を請けることが多いのですが、仕事を依頼する側の視点に立ってみると「実際のところ業務に参加するとどういうことが行われるのか？」というのがやはり気になると思います。

実際、最近の打ち合わせでもその手の不安について相談されることがあったので、ここ1ヶ月でのそれ系の仕事で出したPull Requestを元に、実際に何をやっていたかの例を挙げてみたいと思います。

- 開発環境構築手順や説明方法の改善
- 荒れたRuboCopの改善
- .rubocop.ymlからTargetRailsVersionを取り除く
- DEPRECATION WARNING対応いろいろ
- 既存のメソッドと名前が被っているスコープを別名に変更
- RSpecのpositional-argumentsを置換
- activerecord-importでTIME型のカラムにはStringを避ける
- ApplicationControllerとApplicationRecordを用意
- テストではconfig.active_job.queue_adapterを:inlineに
- image_tagにnilを渡さない
- renderの古いオプションを置換
- uniqをdistinctに
- 条件付きdestroy_allをwhereで代替
- not_to + raise_errorで例外クラス指定を除去
- paramsに.to_h.with_indifferent_accessを
- feature-specでDB connectionを共有するハックをやめる
- mailerで使われている_pathを_urlに置換
- success?をsuccessful?に置換
- ActiveModel::Dirtyの変更に対応
- UniquenessValidatorにcase_sensitivityを付ける
- if/unlessオプションのString指定をやめる
- gem groupの最適化
- Gemfileの並び替え
- Gemfileのrequireオプションの最適化
- CIでのbundle installのオプション最適化
- eager_load_pathsの最適化
- timecop gemの廃止
- 不要なgemの除去
- RSpecの設定の最適化
- CircleCIへの移行
- テスト環境でのshow_exceptionsの有効化
- where.notの互換性対応
- .rubocop_todo.ymlへの全対応
- 不要なルーティングの除去
- bootsnapの導入
- テストされていないエンドポイントへのrequest-specの追加
- CIのRSpecのログから標準出力を除去
- たまに失敗するテストに対応
- redirect_backの互換性対応
- CIでyarn installに--prefer-offlineを付ける
- CIのキャッシュキーの最適化
- Docker環境向けのdata-volumeの最適化
- jbuilderからas_jsonベースの単純なJSON生成の仕組みへ移行
- 各種gemの最新化
- Zeitwerk対応
- force_ssl有効化
- Ruby 2.6へ移行
- Rails起動時間の削減
- 不要なRails.envの廃止
- ファイルの二重読み込み問題に対処
- bin/setupの改善
- ActiveSupport::Concernの良くない使い方に対処

まあなんかガチャガチャと色々やっていっています。特定のアプリケーションの実装に依存する話 (要はFooモデルのbazメソッドの実装が良くないとか) についてはここに含んでいなくて、実際にはそういうところが一番のホットスポットで改善に効いてくることが多いんですが、そういうのは置いといて汎用性のありそうなタスクだけ抽出してみました。
