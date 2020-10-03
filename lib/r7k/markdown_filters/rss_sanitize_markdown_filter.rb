require 'html/pipeline'

module R7k
  module MarkdownFilters
    class RssSanitizeMarkdownFilter < ::HTML::Pipeline::Filter
      def call
        doc.search('iframe, script, style').each(&:remove)
        doc
      end
    end
  end
end
