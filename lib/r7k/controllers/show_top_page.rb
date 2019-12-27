require 'r7k/views/show_top_page'

module R7k
  module Controllers
    class ShowTopPage < ::Hibana::Controller
      def call
        response.headers['Content-Type'] = 'text/html; charset=utf-8'
        response.write(
          ::R7k::Views::ShowTopPage.new(
            articles: ::R7k::Models::Article.all.sort_by(&:published_at).reverse.take(4),
            layout_template_path: 'templates/layout.html.erb',
            partial_template_path: 'templates/show_top_page.html.erb',
            request: request,
          )
        )
      end
    end
  end
end
