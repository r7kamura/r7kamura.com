---
title: 実行時間ベースでテストを分割するGitHub Action
---

GitHub Actionsでテストファイルを複数ノードに適切に分割するためのカスタムアクション、[r7kamura/split-tests-by-timings](https://github.com/r7kamura/split-tests-by-timings)を作った。

CircleCIに[同様の仕組み](https://circleci.com/docs/use-the-circleci-cli-to-split-tests/#split-by-timing-data)があり、今回はこれのGitHub Actions版が欲しかった。

既存ツールとして、Go製の[leonid-shevtsov/split_tests](https://github.com/leonid-shevtsov/split_tests)というCLIツールがあり、これを利用する[chaosaffe/split-tests](https://github.com/chaosaffe/split-tests)というカスタムアクションがある。

このカスタムアクションでも不足は無かったが、幾つかの理由で今回自作するに至った。

- しばらく使いそうなので、保守性を上げるためにも、不要な機能を取り除いて必要最低限の機能にしたかった
- GitHub Actionsは仕様変更が多いため、自分で保守できるようにしたかった

今回、内部実装としてRust製の[mtsmfm/split-test](https://github.com/mtsmfm/split-test)というCLIツールを使わせてもらうことにした。細かいことを言うと、ログの出力のされ方について自分の用途ではいまいちに感じる部分があったので、余裕があれば将来この部分も自作のものに切り替えるかもしれない。

使用感について。JUnit XML形式のファイルの用意やカスタムアクションの処理のためのオーバーヘッドが懸念されたが、意外と短く収まったため、複数ノードで実行したい程度に実行時間が長いようなジョブでは常に有効に使えそうだと感じた。
