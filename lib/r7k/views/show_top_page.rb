require 'r7k/views/base'

module R7k
  module Views
    class ShowTopPage < ::R7k::Views::Base
      # @param [Enumerable<R7k::Models::Article>] articles
      def initialize(articles:, **argv)
        super(**argv)
        @articles = articles
      end

      private

      # @return [String]
      def canonical_url
        "#{request.base_url}/"
      end

      # @return [String]
      def description
        'このウェブサイトでは、日々の生活やプログラミングなどに関する、個人的な文章を公開しています。'
      end

      # @return [String]
      def title
        'r7kamura.com'
      end
    end
  end
end
