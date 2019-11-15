const fs = require("fs").promises;
const glob = require("glob-promise");
const marked = require("marked");
const matter = require("gray-matter");
const mustache = require("mustache");

const render = async ({ path, variables }) => {
  const template = await fs.readFile(path, "utf8");
  return mustache.render(template, variables);
};

const renderInLayout = async ({ path, variables }) => {
  const content = await render({
    path,
    variables,
  });
  return render({
    path: "templates/layout.html.mustache",
    variables: {
      content,
    },
  });
};

const scanArticles = async () => {
  const paths = await glob("articles/*.md");
  return Promise.all(
    paths.sort().reverse().map(async (path) => {
      const content = await fs.readFile(path, "utf8");
      const object = matter(content);
      return {
        body: marked(object.content),
        date: `${object.data.date.getFullYear()}-${object.data.date.getMonth() + 1}-${object.data.date.getDate()}`,
        dateInJapanese: `${object.data.date.getFullYear()}年${object.data.date.getMonth() + 1}月${object.data.date.getDate()}日`,
        title: object.data.title,
      };
    })
  );
};

const buildFile = async ({ destination, source, variables }) => {
  return fs.writeFile(
    destination,
    await renderInLayout({
      path: source,
      variables,
    })
  );
};

const main = async () => {
  const articles = await scanArticles();
  const entries = [
    {
      destination: "dist/index.html",
      source: "templates/index.html.mustache",
      variables: {
        articles,
      },
    },
    ...articles.map((article) => {
      return {
        destination: `dist/blog/${article.date}.html`,
        source: "templates/article.html.mustache",
        variables: article
      };
    }),
  ];

  return Promise.all(entries.map(buildFile));
};

main();
