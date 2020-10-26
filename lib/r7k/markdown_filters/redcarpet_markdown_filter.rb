require 'html/pipeline'
require 'nokogiri'
require 'redcarpet'

module R7k
  module MarkdownFilters
    class RedcarpetMarkdownFilter < ::HTML::Pipeline::TextFilter
      class << self
        # @return [Redcarpet::Markdown]
        def markdown_renderer
          @markdown_renderer ||= ::Redcarpet::Markdown.new(
            ::Redcarpet::Render::HTML,
            autolink: true,
            fenced_code_blocks: true,
            no_intra_emphasis: true,
            strikethrough: true,
          )
        end
      end

      def call
        ::Nokogiri::HTML.fragment(rendered_body)
      end

      private

      # @return [Redcarpet::Markdown]
      def markdown_renderer
        self.class.markdown_renderer
      end

      # @return [String]
      def rendered_body
        markdown_renderer.render(@text)
      end
    end
  end
end
