# r7kamura.com

[![](https://github.com/r7kamura/r7kamura.com/workflows/publish/badge.svg)](https://github.com/r7kamura/r7kamura.com/actions?query=workflow%3Apublish)

The source of [r7kamura.com](https://r7kamura.com/).

## Development

### Preview on local HTTP server

```
docker-compose up
```

### Build static files

```
docker-compose run --rm ruby bundle exec rake build
```
