require 'r7k/views/base'

module R7k
  module Views
    class ListArticles < ::R7k::Views::Base
      # @param [Enumerable<R7k::Models::Article>] articles
      def initialize(articles:, **argv)
        super(**argv)
        @articles = articles
      end

      private

      # @return [String]
      def canonical_url
        "#{request.base_url}/articles"
      end

      # @return [String]
      def description
        'すべての過去記事へのリンクを、最近書かれた順に並べています。'
      end

      # @return [String]
      def title
        '一覧'
      end
    end
  end
end
