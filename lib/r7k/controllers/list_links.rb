# frozen_string_literal: true

require 'r7k/views/list_links'

module R7k
  module Controllers
    class ListLinks < ::Hibana::Controller
      def call
        response.headers['Content-Type'] = 'text/html; charset=utf-8'
        response.write(
          ::R7k::Views::ListLinks.new(
            layout_template_path: 'templates/layout.html.erb',
            partial_template_path: 'templates/list_links.html.erb',
            request: request,
          )
        )
      end
    end
  end
end
