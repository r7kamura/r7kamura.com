# frozen_string_literal: true

require_relative 'lib/r7k/application'
require 'rack/capture'

desc 'Build static files.'
task :build do
  R7k::Application.paths.sort.each do |path|
    Rack::Capture.call(
      app: R7k::Application,
      url: "https://r7kamura.com#{path}",
    )
  end
end
