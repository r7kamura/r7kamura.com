require 'hibana'
require 'rack/static'

$LOAD_PATH.unshift('lib')
require 'r7k/controllers/list_articles'
require 'r7k/controllers/show_article'
require 'r7k/controllers/show_articles_feed'
require 'r7k/controllers/show_sitemap'
require 'r7k/controllers/show_top_page'

module R7k
  class Application < ::Hibana::Application
    route do
      get '/', to: ::R7k::Controllers::ShowTopPage
      get '/articles', to: ::R7k::Controllers::ListArticles
      get '/articles/:article_id', to: ::R7k::Controllers::ShowArticle
      get '/feed.xml', to: ::R7k::Controllers::ShowArticlesFeed
      get '/sitemap.txt', to: R7k::Controllers::ShowSitemap
    end

    middleware.use(
      ::Rack::Static,
      root: 'static',
      urls: %w[
        /CNAME
        /css
        /default_og_image.jpg
        /favicon.ico
        /images
        /opensearch.xml
      ]
    )
  end
end
