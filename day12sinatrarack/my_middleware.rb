# my_middleware.rb
module MyMiddleware
  class Hello
    def initialize(app)
      @app = app
    end

    def call(env)
      if env['PATH_INFO'] == '/hello' || env['PATH_INFO'] == '/'
        [200, {"Content-Type" => "text/plain"}, ["Hello from the middleware!"]]
      else
        # forward the request
        # @app.call(env)
        # Display 404 page
        [404, {"Content-Type" => "text/plain"}, ["404 - Not OK!"]]
      end
    end
  end
end