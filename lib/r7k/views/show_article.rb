require 'r7k/views/base'
require 'uri'

module R7k
  module Views
    class ShowArticle < ::R7k::Views::Base
      # @param [R7k::Models::Article] article
      def initialize(article:, **argv)
        super(**argv)
        @article = article
      end

      private

      # @return [String]
      def canonical_url
        "#{request.base_url}/articles/#{@article.id}"
      end

      # @return [String, nil]
      def description
        @article.summary
      end

      # @return [String, nil]
      def image_url
        object = @article.image_url
        if object
          ::URI.join(request.base_url, object)
        end
      end

      # @return [String]
      def title
        @article.title
      end
    end
  end
end
