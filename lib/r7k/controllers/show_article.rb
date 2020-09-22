require 'r7k/models/article'
require 'r7k/views/show_article'

module R7k
  module Controllers
    class ShowArticle < ::Hibana::Controller
      def call
        response.headers['Content-Type'] = 'text/html; charset=utf-8'
        response.write(
          ::R7k::Views::ShowArticle.new(
            article: ::R7k::Models::Article.find_by_id(parameters[:article_id]),
            partial_template_path: 'templates/show_article.html.erb',
            layout_template_path: 'templates/layout.html.erb',
            request: request,
          )
        )
      end
    end
  end
end
