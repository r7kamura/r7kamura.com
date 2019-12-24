require 'r7k/models/article'
require 'r7k/views/list_articles'

module R7k
  module Controllers
    class ListArticles < ::Hibana::Controller
      def call
        response.headers['Content-Type'] = 'text/html'
        response.write(
          ::R7k::Views::ListArticles.new(
            articles: ::R7k::Models::Article.all.sort_by(&:published_at).reverse,
            layout_template_path: 'templates/layout.html.erb',
            partial_template_path: 'templates/list_articles.html.erb',
            request: request,
          )
        )
      end
    end
  end
end
