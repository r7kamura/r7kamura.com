---
title: GitHub Actionsの手動実行
---

GitHub Actionsが不調なときにPushすると、後で回復してもワークフローが実行されなかったりする。これだと記事を投稿しても反映されなかったりして困るので、手動でも実行できるようにした。

ワークフローの定義に、workflow_dispatchイベントに対応していることを明記するだけで良い。

```diff
diff --git a/.github/workflows/publish.yml b/.github/workflows/publish.yml
index 67d24e3c..e431c5c6 100644
--- a/.github/workflows/publish.yml
+++ b/.github/workflows/publish.yml
@@ -4,6 +4,7 @@ on:
   push:
     branches:
       - main
+  workflow_dispatch:

 jobs:
   publish:
```

これで、ワークフローのページに手動実行用のUIが現れるようになる。

![](https://i.imgur.com/X1n9JDwh.png)
