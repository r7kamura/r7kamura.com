require 'rack'

module R7k
  class Capture
    # @param [#call] app Rack application.
    # @param [String] host
    # @param [String] request_path
    # @param [Boolean] ssl
    def initialize(
      app:,
      host:,
      request_path:,
      ssl:
    )
      @app = app
      @host = host
      @request_path = request_path
      @ssl = ssl
    end

    def call
      puts "Processing #{@request_path}"
      response = get_response
      destination = calculate_destination(response: response)
      destination.parent.mkpath
      content = ''
      response.body.each do |element|
        content << element
      end
      destination.write(content)
    end

    private

    # @param [Rack::Response] response
    def calculate_destination(response:)
      destination = ::Pathname.new("dist#{@request_path}")
      if response.content_type&.include?('text/html')
        if @request_path == '/'
          destination += 'index'
        end
        destination = destination.sub_ext('.html')
      end
      destination
    end

    # @return [Rack::Response]
    def get_response
      status, headers, body = @app.call(rack_env)
      ::Rack::Response.new(body, status, headers)
    end

    # @return [Hash]
    def rack_env
      {
        'HTTP_HOST' => @host,
        'PATH_INFO' => @request_path,
        'rack.url_scheme' => url_scheme,
        'REQUEST_METHOD' => 'GET',
        'SCRIPT_NAME' => '',
        'SERVER_PORT' => server_port,
      }
    end

    # @return [String]
    def server_port
      if @ssl
        '443'
      else
        '80'
      end
    end

    # @return [String]
    def url_scheme
      if @ssl
        'https'
      else
        'http'
      end
    end
  end
end
