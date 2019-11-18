const fs = require("fs").promises;
const glob = require("glob-promise");

const main = async () => {
  const markdownPaths = await glob("articles/*.md");
  const articlePaths = markdownPaths.map((path) => {
    const slug = path.split("/").pop().split(".").shift();
    return `/articles/${slug}`;
  });

  const otherPaths = [
    "/",
    "/articles",
  ];

  const urls = [
    ...articlePaths,
    ...otherPaths,
  ].map((path) => {
    return `https://r7kamura.github.io${path}`;
  });
  const content = urls.join("\n") + "\n"
  return fs.writeFile("dist/sitemap.txt", content, "utf8");
};

main();
