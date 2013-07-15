require './my_middleware'
use MyMiddleware::Hello #this comes in between
run Proc.new{|env| [200, {"Content-Type" => "text/plain"}, 
['Try accessing visiting /hello']]}