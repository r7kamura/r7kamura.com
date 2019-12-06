const dayjs = require("dayjs");
const fs = require("fs");
const marked = require("marked");
const matter = require("gray-matter");

class Article {
  static DEFAULT_TITLE = "無題";

  constructor({ sourcePath }) {
    this.sourcePath = sourcePath;
  }

  canonicalPath() {
    return `/articles/${this.slug()}`;
  }

  dateInJapanese() {
    return this.time().format("YYYY年MM月DD日");
  }

  imageUrl() {
    return this.frontmatter().data.image
  }

  publishedTimeInISO8601() {
    return this.time().format("YYYY-MM-DDT00:00:00+09:00");
  }

  renderedBody() {
    return marked(this.body());
  }

  title() {
    return this.frontmatter().data.title || this.constructor.DEFAULT_TITLE;
  }

  updatedTimeInISO8601() {
    return dayjs(fs.statSync(this.sourcePath).mtime).toISOString();
  }

  // private

  body() {
    return this.frontmatter().content;
  }

  content() {
    return fs.readFileSync(this.sourcePath, "utf8");
  }

  frontmatter() {
    if (typeof this._frontmatter === "undefined") {
      this._frontmatter = matter(this.content());
    }
    return this._frontmatter;
  }

  slug() {
    return this.sourcePath.split("/").pop().split(".").shift();
  }

  time() {
    return dayjs(this.slug().split("-").slice(0, 3).join("-"));
  }
}

module.exports.Article = Article;
