# frozen_string_literal: true

require 'hibana'
require 'pathname'
require 'rack/reloader'
require 'rack/static'

$LOAD_PATH.unshift('lib')
require 'r7k'

module R7k
  class Application < ::Hibana::Application
    route do
      get '/', to: ::R7k::Controllers::ShowTopPage
      get '/articles/:article_id', to: ::R7k::Controllers::ShowArticle
      get '/links', to: ::R7k::Controllers::ListLinks
      get '/feed.xml', to: ::R7k::Controllers::ShowArticlesFeed
      get '/sitemap.txt', to: ::R7k::Controllers::ShowSitemap
    end

    middleware.use(
      ::Rack::Static,
      root: 'static',
      urls: %w[
        /CNAME
        /css
        /default_og_image.jpg
        /favicon.ico
        /images
        /opensearch.xml
      ]
    )

    middleware.use ::Rack::Reloader

    class << self
      # @return [Array<String>]
      def paths
        article_paths + asset_paths + other_paths
      end

      private

      # @return [Array<String>]
      def article_paths
        ::R7k::Models::Article.all.map(&:canonical_path)
      end

      # @return [Array<String>]
      def asset_paths
        ::Pathname.glob('static/**/*').select(&:file?).map do |pathname|
          "/#{pathname.relative_path_from('static')}"
        end
      end

      # @return [Array<String>]
      def other_paths
        %w[
          /
          /links
          /feed.xml
          /sitemap.txt
        ]
      end
    end
  end
end
