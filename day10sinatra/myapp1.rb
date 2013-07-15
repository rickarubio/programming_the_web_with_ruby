require 'sinatra'
set :port, 8080
set :bind, '0.0.0.0'
get '/' do
  "Hello Ruby participants from across the globe!"
end