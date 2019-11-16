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

const renderInLayout = async ({ layoutVariables, path, variables }) => {
  const content = await render({
    path,
    variables,
  });
  return render({
    path: "templates/layout.html.mustache",
    variables: {
      content,
      ogType: "website",
      ...layoutVariables,
    },
  });
};

const scanArticles = async () => {
  const paths = await glob("articles/*.md");
  const articles = await Promise.all(
    paths.map(async (path) => {
      const content = await fs.readFile(path, "utf8");
      const object = matter(content);
      const slug = path.split("/").pop().split(".").shift();
      const time = dayjs(slug.split("-").slice(0, 3).join("-"));
      return {
        body: marked(object.content),
        date: time.format("YYYY-MM-DD"),
        dateInISO8601: time.format("YYYY-MM-DDT00:00:00+09:00"),
        dateInJapanese: time.format("YYYY年MM月DD日"),
        path: `/articles/${slug}`,
        title: object.data.title || "無題",
      };
    })
  );
  return articles.sort(article => article.date).reverse();
};

const buildFile = async ({ destination, layoutVariables, source, variables }) => {
  return fs.writeFile(
    destination,
    await renderInLayout({
      layoutVariables,
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
      layoutVariables: {
        canonical: "/",
        title: "r7kamura",
      },
      source: "templates/index.html.mustache",
      variables: {
        articles: articles.slice(0, 4),
      },
    },
    {
      destination: "dist/articles.html",
      layoutVariables: {
        canonical: "/articles",
        title: "r7kamura",
      },
      source: "templates/articles.html.mustache",
      variables: {
        articles,
      },
    },
    ...articles.map((article) => {
      return {
        destination: `dist${article.path}.html`,
        layoutVariables: {
          canonical: article.path,
          ogType: "article",
          title: article.title,
        },
        source: "templates/article.html.mustache",
        variables: article
      };
    }),
  ];

  return Promise.all(entries.map(buildFile));
};

main();
