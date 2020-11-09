# frozen_string_literal: true

require 'r7k/models/article'

module R7k
  module Controllers
    class ShowSitemap < ::Hibana::Controller
      def call
        response.headers['Content-Type'] = 'text/plain; charset=utf-8'
        response.write(
          ::R7k::Models::Article.all.map do |article|
            "#{request.base_url}/articles/#{article.id}\n"
          end.sort.reverse.join
        )
      end
    end
  end
end
