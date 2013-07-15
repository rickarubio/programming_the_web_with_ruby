require 'rack/lobster'
require './my_middleware'
use MyMiddleware::Hello #this comes in between
run Rack::Lobster.new