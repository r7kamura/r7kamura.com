# frozen_string_literal: true

require 'r7k/views/base'
require 'uri'

module R7k
  module Views
    class ListLinks < ::R7k::Views::Base
      private

      # @return [String]
      def canonical_url
        "#{request.base_url}/links"
      end

      # @return [String, nil]
      def description
        'このウェブサイトに関連するリンク集。'
      end

      # @return [String]
      def title
        'リンク集'
      end
    end
  end
end
