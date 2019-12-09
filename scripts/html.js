const Article = require("../lib/Article").Article;
const fs = require("fs");
const glob = require("glob-promise");
const mustache = require("mustache");

const render = async ({ path, variables }) => {
  const template = fs.readFileSync(path, "utf8");
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
    paths.map(async (sourcePath) => {
      const article = new Article({ sourcePath });
      return {
        canonicalPath: article.canonicalPath(),
        dateInJapanese: article.dateInJapanese(),
        description: article.description(),
        imageUrl: article.imageUrl(),
        publishedTimeInISO8601: article.publishedTimeInISO8601(),
        renderedBody: article.renderedBody(),
        title: article.title(),
      };
    })
  );
  return articles.sort(article => article.publishedTimeInISO8601).reverse();
};

const buildFile = async ({ destination, layoutVariables, source, variables }) => {
  return fs.writeFileSync(
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
        description: "このウェブサイトでは、日々の生活やプログラミングなどに関する、個人的な文章を公開しています。",
        title: "r7kamura",
      },
      source: "templates/index.html.mustache",
      variables: {
        articles: articles.slice(0, 4),
        description: "このウェブサイトでは、日々の生活やプログラミングなどに関する、個人的な文章を公開しています。",
      },
    },
    {
      destination: "dist/articles.html",
      layoutVariables: {
        canonical: "/articles",
        description: "過去のすべての記事を表示しています。",
        title: "r7kamura",
      },
      source: "templates/articles.html.mustache",
      variables: {
        articles,
        description: "過去のすべての記事を表示しています。",
      },
    },
    ...articles.map((article) => {
      return {
        destination: `dist${article.canonicalPath}.html`,
        layoutVariables: {
          canonical: article.canonicalPath,
          description: article.description,
          imageUrl: article.imageUrl,
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
