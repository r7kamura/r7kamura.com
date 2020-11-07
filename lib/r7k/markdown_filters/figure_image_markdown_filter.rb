require 'html/pipeline'
require 'nokogiri'

module R7k
  module MarkdownFilters
    class FigureImageMarkdownFilter < ::HTML::Pipeline::Filter
      def call
        doc.search('p').each do |paragraph|
          elements = paragraph.children
          if elements.count == 1 && elements[0].name == 'img' && elements[0]['title']
            outer = ::Nokogiri::HTML.fragment('<figure><figcaption></figcaption></figure>')
            figure = outer.at('figure')
            figcaption = outer.at('figcaption')
            figcaption.content = elements[0]['title']
            figcaption.add_previous_sibling(elements[0].clone)
            paragraph.replace(figure)
          end
        end
        doc
      end
    end
  end
end
