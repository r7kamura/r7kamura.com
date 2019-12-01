const dayjs = require("dayjs");
const fs = require("fs").promises;
const glob = require("glob-promise");
const marked = require("marked");
const matter = require("gray-matter");
const mustache = require("mustache");

const render = async ({ path, variables }) => {
  const template = await fs.readFile(path, "utf8");
  return mustache.render(template, variables);
};

const scanArticles = async () => {
  const paths = await glob("articles/*.md");
  const articles = await Promise.all(
    paths.map(async (path) => {
      const content = await fs.readFile(path, "utf8");
      const stats = await fs.stat(path);
      const object = matter(content);
      const slug = path.split("/").pop().split(".").shift();
      const time = dayjs(slug.split("-").slice(0, 3).join("-"));
      return {
        body: marked(object.content),
        date: time.format("YYYY-MM-DD"),
        path: `/articles/${slug}`,
        publishedAt: time.format("YYYY-MM-DDT00:00:00+09:00"),
        title: object.data.title || "無題",
        updatedAt: dayjs(stats.mtime).toISOString(),
      };
    })
  );
  return articles.sort(article => article.date).reverse().slice(0, 19);
};

const buildFile = async ({ destination, source, variables }) => {
  return fs.writeFile(
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
      updatedAt: dayjs().toISOString(),
    },
  });
};

main();
