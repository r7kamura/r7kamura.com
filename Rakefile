require_relative 'lib/r7k/application'
require_relative 'lib/r7k/capture'
require 'pathname'

desc 'Build static files.'
task :build do
  article_paths = R7k::Models::Article.all.map(&:canonical_path)
  static_file_paths = Pathname.glob('static/**/*').select(&:file?).map do |pathname|
    "/#{pathname.relative_path_from('static')}"
  end
  other_paths = %w[
    /
    /articles
    /feed.xml
    /sitemap.txt
  ]
  request_paths = other_paths + article_paths + static_file_paths
  request_paths.sort.each do |request_path|
    R7k::Capture.new(
      app: R7k::Application,
      host: 'r7kamura.com',
      request_path: request_path,
      ssl: true,
    ).call
  end
end
