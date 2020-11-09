# frozen_string_literal: true

require 'html/pipeline'

module R7k
  module MarkdownFilters
    class AmazonAffiliateMarkdownFilter < ::HTML::Pipeline::Filter
      def call
        doc.search('a').each do |a|
          if a['href'].match?(%r{\Ahttps://www.amazon\.co\.jp/dp/\w+\z})
            a['href'] += '?tag=r7kamura07-22'
          end
        end
        doc
      end
    end
  end
end
