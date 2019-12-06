const Article = require("../lib/Article").Article;
const dayjs = require("dayjs");
const fs = require("fs");
const glob = require("glob-promise");
const mustache = require("mustache");

const render = async ({ path, variables }) => {
  const template = fs.readFileSync(path, "utf8");
  return mustache.render(template, variables);
};

const scanArticles = async () => {
  const paths = await glob("articles/*.md");
  const articles = await Promise.all(
    paths.map(async (sourcePath) => {
      const article = new Article({ sourcePath });
      return {
        canonicalPath: article.canonicalPath(),
        publishedTimeInISO8601: article.publishedTimeInISO8601(),
        renderedBody: article.renderedBody(),
        title: article.title(),
        updatedTimeInISO8601: article.updatedTimeInISO8601(),
      };
    })
  );
  return articles.sort(article => article.publishedTimeInISO8601).reverse().slice(0, 19);
};

const buildFile = async ({ destination, source, variables }) => {
  return fs.writeFileSync(
    destination,
    await render({
      path: source,
      variables,
    })
  );
};

const main = async () => {
  const articles = await scanArticles();

  await buildFile({
    destination: 'dist/feed.xml',
    source: 'templates/feed.xml.mustache',
    variables: {
      articles,
      baseUrl: 'https://r7kamura.com',
      currentTime: dayjs().toISOString(),
    },
  });
};

main();
