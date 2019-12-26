require_relative 'lib/r7k/application'
require 'pathname'

task :build do
  article_paths = R7k::Models::Article.all.map(&:canonical_path)
  static_file_paths = Pathname.glob('static/**/*').select do |pathname|
    pathname.file?
  end.map do |pathname|
    "/#{pathname.relative_path_from('static')}"
  end
  other_paths = %w[
    /
    /articles
    /feed.xml
    /sitemap.txt
  ]
  paths = other_paths + article_paths + static_file_paths

  paths.each do |path|
    status, headers, body = *R7k::Application.call(
      'HTTP_HOST' => 'r7kamura.com',
      'PATH_INFO' => path,
      'rack.url_scheme' => 'https',
      'REQUEST_METHOD' => 'GET',
      'SCRIPT_NAME' => '',
      'SERVER_PORT' => '443',
    )
    pathname = Pathname.new("dist#{path}")
    response = Rack::Response.new(body, status, headers)
    if response.content_type&.include?('text/html')
      if path == '/'
        pathname += 'index'
      end
      pathname = pathname.sub_ext('.html')
    end
    pathname.parent.mkpath
    pathname.write(response.body.join)
  end
end
