require 'rack'
my_rack_proc = lambda { |env| [200, {"Content-Type" => "text/plain"}, 
	["Hello. The time is #{Time.now}"]]}
puts my_rack_proc.call({})
puts "Command line argument you typed was: #{ARGV[0]}"
# using the run method makes it impossible for me to use CTRL+C to stop the WEBrick server
# Rack::Handler::WEBrick.run my_rack_proc, :Port => 9876
# This way seems to work great with CTRL+C so I don't have to kill -9 pid the webrick server
Rack::Server.new({:app => my_rack_proc, :server => 'webrick', :Port => 9876}).start