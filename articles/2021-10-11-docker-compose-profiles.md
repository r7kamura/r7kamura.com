---
title: docker composeのserviceをグループ化
---

docker composeではserviceごとにprofilesという属性を指定できて、起動時にこれを指定することで関連する一連のserviceだけを起動させられる。

どういうシーンで使えるのか。例えばとあるRailsアプリでは、一部の開発者はMySQLやRedisなどのデータストアだけdocker composeで起動して開発し、他の開発者は加えてRubyもdocker composeで起動して開発している。osxfsが遅すぎて、ファイルへの読み書きが頻発する処理がmacOSのDockerでは使い物にならないからだが、この話は今回どうでもいい。さてこのとき、データストア用のserviceに適当な名前のprofileを割り当てておくことで、個々のserviceの名前を逐一指定しなくても起動でき、将来の変更にも強くなって嬉しい。

```
# profile導入前
docker compose up mysql redis

# profile導入後
docker compose --profile db up
```

この例のdocker-compose.ymlの定義は下の通り。mysql serviceとredis serviceにはapplicationとdbを、rails serviceにはapplicationを、それぞれprofileとして割り当てている。このapplicationやdbという名前は何でも良くて、profileのために今回新たに生み出した名前だ。

```yaml
version: '3.9'
services:
  mysql:
    image: mysql
    profiles:
      - application
      - db
  rails:
    build: .
    depends_on:
      - mysql
      - redis
    profiles:
      - application
  redis:
    image: redis
    profiles:
      - application
      - db
```

これまでもdepends_on属性があったので、rails serviceを起動したい人は次のように起動することもできたが、profiles属性のおかげで今回のdbのような一連のservice群をグループ化できるようになった。

```
# profile導入前
docker compose up rails

# profile導入後
docker compose --profile application up
```

実際に利用しようとすると気になる細かい点について補足しておく。profiles属性が定義されていないserviceは常に起動されてしまうため、今回の例で言うとrails serviceへのapplication profileの割り当ては必須となる。また、`docker compose up rails` とやると暗黙的にapplication profileが指定されたものとみなされるため、このときdepends_on属性によって同時に起動されるmysql serviceとredis serviceにもapplication profileが付いている必要がある (付いていないとエラーになる)。

profiles属性が利用できるのはdocker compose file version 3.9から。

- https://docs.docker.com/compose/profiles/
- https://docs.docker.com/compose/compose-file/compose-file-v3/
