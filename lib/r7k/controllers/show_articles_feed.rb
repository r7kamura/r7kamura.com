require 'r7k/models/article'
require 'r7k/views/show_articles_feed'

module R7k
  module Controllers
    class ShowArticlesFeed < ::Hibana::Controller
      def call
        response.headers['Content-Type'] = 'application/rss+xml'
        response.write(
          ::R7k::Views::ShowArticlesFeed.new(
            articles: ::R7k::Models::Article.all.sort_by(&:published_at).reverse[0, 20],
            partial_template_path: 'templates/feed.xml.erb',
            request: request,
          )
        )
      end
    end
  end
end
