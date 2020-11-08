require 'html/pipeline'

module R7k
  module MarkdownFilters
    class ImgurLinkMarkdownFilter < ::HTML::Pipeline::Filter
      def call
        doc.search('a').each do |a|
          a['href'] = a['href'].gsub(%r<\Ahttps://i\.imgur\.com/(\w+)h\.jpg\z>, 'https://i.imgur.com/\1.jpg')
        end
      end
    end
  end
end
