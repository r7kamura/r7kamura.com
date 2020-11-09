# frozen_string_literal: true

require 'html/pipeline'
require 'r7k/markdown_filters/amazon_affiliate_markdown_filter'
require 'r7k/markdown_filters/figure_code_block_markdown_filter'
require 'r7k/markdown_filters/figure_image_markdown_filter'
require 'r7k/markdown_filters/image_link_markdown_filter'
require 'r7k/markdown_filters/imgur_link_markdown_filter'
require 'r7k/markdown_filters/redcarpet_markdown_filter'
require 'r7k/markdown_filters/summary_detection_markdown_filter'
require 'yaml'

module R7k
  module Models
    class Article
      DEFAULT_TITLE = '無題'

      class << self
        # @return [Array<R7k::Models::Article>]
        def all
          ::Dir.glob('articles/*.md').sort.reverse.map do |path|
            id = ::File.basename(path, '.md')
            find_by_id(id)
          end
        end

        # @param [String] id
        # @return [R7k::Models::Article, nil]
        def find_by_id(id)
          path = "articles/#{id}.md"
          if ::File.exist?(path)
            new(
              file_content: ::File.read(path),
              id: id,
              updated_at: ::File.mtime(path),
            )
          end
        end
      end

      # @return [String]
      attr_reader :id

      # @return [Time]
      attr_reader :updated_at

      # @param [String] file_content
      # @param [String] id
      # @param [Time] updated_at
      def initialize(
        file_content:,
        id:,
        updated_at:
      )
        @file_content = file_content
        @id = id
        @updated_at = updated_at
      end

      # @return [String]
      def canonical_path
        "/articles/#{id}"
      end

      # @return [String, nil]
      def image_url
        node = rendered_body_result[:output].at('img')
        node&.attribute('src')&.content
      end

      # @return [Time]
      def published_at
        published_on.to_time
      end

      # @return [String]
      def rendered_body
        rendered_body_result[:output].to_s
      end

      # @return [String, nil]
      def summary
        rendered_body_result[:summary]
      end

      # @return [String]
      def title
        frontmatter[:data]['title'] || DEFAULT_TITLE
      end

      private

      # @return [String]
      attr_reader :file_content

      # @return [String]
      def body
        frontmatter[:content]
      end

      # @return [Hash]
      def frontmatter
        array = file_content.split("---\n", 3)
        {
          content: array[2],
          data: ::YAML.safe_load(array[1]),
        }
      end

      # @return [Date]
      def published_on
        ::Date.new(
          segments[0].to_i,
          segments[1].to_i,
          segments[2].to_i,
        )
      end

      # @return [Nokohiti::Node]
      def rendered_body_result
        @rendered_body_result ||= ::HTML::Pipeline.new(
          [
            ::R7k::MarkdownFilters::RedcarpetMarkdownFilter,
            ::R7k::MarkdownFilters::AmazonAffiliateMarkdownFilter,
            ::R7k::MarkdownFilters::SummaryDetectionMarkdownFilter,
            ::R7k::MarkdownFilters::FigureCodeBlockMarkdownFilter,
            ::R7k::MarkdownFilters::FigureImageMarkdownFilter,
            ::R7k::MarkdownFilters::ImageLinkMarkdownFilter,
            ::R7k::MarkdownFilters::ImgurLinkMarkdownFilter
          ]
        ).call(body)
      end

      # @return [Array<String>]
      def segments
        @segments ||= id.split('-', 4)
      end
    end
  end
end
