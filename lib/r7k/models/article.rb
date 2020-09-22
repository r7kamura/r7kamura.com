require 'html/pipeline'
require 'r7k/markdown_filters/figure_markdown_filter'
require 'r7k/markdown_filters/image_link_markdown_filter'
require 'r7k/markdown_filters/redcarpet_markdown_filter'
require 'yaml'

module R7k
  module Models
    class Article
      DEFAULT_TITLE = '無題'

      class << self
        # @return [Array<R7k::Models::Article>]
        def all
          ::Dir.glob('articles/*.md').map do |path|
            new(
              id: ::File.basename(path, '.md'),
            )
          end
        end
      end

      # @return [String]
      attr_reader :id

      # @param [String] id
      def initialize(id:)
        @id = id
      end

      # @return [String]
      def canonical_path
        "/articles/#{id}"
      end

      # @return [String, nil]
      def image_url
        node = rendered_body_node.at('img')
        if node
          node.attribute('src').content
        end
      end

      # @return [Time]
      def published_at
        published_on.to_time
      end

      # @return [String]
      def rendered_body
        rendered_body_node.to_s
      end

      # @return [String, nil]
      def summary
        string = rendered_body_node.text.lstrip.split("\n")[0]&.gsub(/。.+/, '。')
        if string && !string.empty?
          string[0, 300]
        end
      end

      # @return [String]
      def title
        frontmatter[:data]['title'] || DEFAULT_TITLE
      end

      # @return [Time]
      def updated_at
        ::File.mtime(file_path)
      end

      private

      # @return [String]
      def body
        frontmatter[:content]
      end

      # @return [String]
      def file_content
        ::File.read("articles/#{id}.md")
      end

      # @return [String]
      def file_path
        "articles/#{id}.md"
      end

      # @return [Hash]
      def frontmatter
        array = file_content.split("---\n", 3)
        {
          content: array[2],
          data: ::YAML.load(array[1]),
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
      def rendered_body_node
        @rendered_body_node ||= ::HTML::Pipeline.new(
          [
            ::R7k::MarkdownFilters::RedcarpetMarkdownFilter,
            ::R7k::MarkdownFilters::FigureMarkdownFilter,
            ::R7k::MarkdownFilters::ImageLinkMarkdownFilter,
          ]
        ).call(body)[:output]
      end

      # @return [Array<String>]
      def segments
        @segments ||= id.split('-', 4)
      end
    end
  end
end
