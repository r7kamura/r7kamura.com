require 'html/pipeline'
require 'nokogiri'

module R7k
  module MarkdownFilters
    class FigureCodeBlockMarkdownFilter < ::HTML::Pipeline::Filter
      def call
        doc.search('pre').each do |pre|
          code = pre.at('code')
          next unless code

          class_name = code['class']
          next unless class_name

          language_name, caption = class_name.split(':', 2)
          next unless caption

          if language_name.nil? || language_name.empty?
            code.remove_attribute('class')
          else
            code['class'] = language_name
          end

          outer = ::Nokogiri::HTML.fragment('<figure><figcaption></figcaption></figure>')
          figure = outer.at('figure')
          figcaption = figure.at('figcaption')
          figcaption.content = caption
          figcaption.add_previous_sibling(pre.clone)
          pre.replace(figure)
        end
        doc
      end
    end
  end
end
