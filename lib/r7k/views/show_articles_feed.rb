require 'r7k/views/base'

module R7k
  module Views
    class ShowArticlesFeed < ::R7k::Views::Base
      # @param [Enumerable<R7k::Models::Article>] articles
      def initialize(articles:, **argv)
        super(**argv)
        @articles = articles
      end

      private

      # @return [String]
      def canonical_url
        "#{request.base_url}/feed.xml"
      end

      # @return [String]
      def root_url
        "#{request.base_url}/"
      end

      # @return [String]
      def title
        'r7kamura.com'
      end
    end
  end
end
