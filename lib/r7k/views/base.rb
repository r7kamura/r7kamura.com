require 'cgi/escape'

module R7k
  module Views
    class Base < ::Hibana::View
      private

      # @return [String]
      def canonical_url
        raise ::NotImplementedError
      end

      # @param [String] string
      def escape_html(string)
        ::CGI.escape_html(string)
      end

      # @return [String, nil]
      def description
      end

      # @return [String, nil]
      def image_url
      end

      # @return [String]
      def og_type
        'website'
      end
    end
  end
end
