require 'html/pipeline'

module R7k
  module MarkdownFilters
    class SummaryDetectionMarkdownFilter < ::HTML::Pipeline::Filter
      def call
        doc.xpath('p').each do |paragraph|
          text_node = paragraph.children.first
          next if text_node.nil? || !text_node.text?
          string = paragraph.text.lstrip.split("\n")[0]&.gsub(/。.+/, '。')
          if string && !string.empty?
            result[:summary] = string[0, 300]
          end
          break
        end
        doc
      end
    end
  end
end
