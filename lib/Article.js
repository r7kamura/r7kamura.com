const cheerio = require("cheerio");
const dayjs = require("dayjs");
const fs = require("fs");
const marked = require("marked");
const matter = require("gray-matter");

class Article {
  static BASE_URL = "https://r7kamura.com";

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

  description() {
    const $ = cheerio.load(this.renderedBody());
    const value = $.text().replace(/^\s+/, "").split("\n")[0].replace(/。.+/, "。");
    if (value !== "") {
      return value.slice(0, 300);
    }
  }

  imageUrl() {
    const pathOrUrl = this.imageUrlFromFrontmatter() || this.imageUrlFromRenderedBody();
    if (pathOrUrl) {
      if (pathOrUrl.startsWith("/")) {
        return `${this.constructor.BASE_URL}${pathOrUrl}`;
      } else {
        return pathOrUrl;
      }
    } else {
      return null;
    }
  }

  publishedTimeInISO8601() {
    return this.time().format("YYYY-MM-DDT00:00:00+09:00");
  }

  renderedBody() {
    if (typeof this._renderedBody === "undefined") {
      this._renderedBody = marked(this.body());
    }
    return this._renderedBody;
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

  imageUrlFromFrontmatter() {
    return this.frontmatter().data.image;
  }

  imageUrlFromRenderedBody() {
    const $ = cheerio.load(this.renderedBody());
    return $("img").attr("src");
  }

  slug() {
    return this.sourcePath.split("/").pop().split(".").shift();
  }

  time() {
    return dayjs(this.slug().split("-").slice(0, 3).join("-"));
  }
}

module.exports.Article = Article;
