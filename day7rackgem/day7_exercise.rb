require 'rack'
just_another_proc = lambda {|env| [200, {"Content-Type" => "text/plain"}, 
	["Command line argument you typed was: #{ARGV[0]}"]]}
Rack::Server.new({:app => just_another_proc, :server => 'webrick', 
	:Port => 8500}).start