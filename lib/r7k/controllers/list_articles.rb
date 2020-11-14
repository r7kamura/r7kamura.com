# frozen_string_literal: true

require 'r7k/views/list_articles'

module R7k
  module Controllers
    class ListArticles < ::Hibana::Controller
      def call
        response.headers['Content-Type'] = 'text/html; charset=utf-8'
        response.write(
          ::R7k::Views::ListArticles.new(
            articles: ::R7k::Models::Article.all,
            layout_template_path: 'templates/layout.html.erb',
            partial_template_path: 'templates/list_articles.html.erb',
            request: request,
          )
        )
      end
    end
  end
end
