my_rack_proc = lambda { |env| [200, {"Content-Type" => "text/plain"}, 
	["Hello. The time is #{Time.now}"]]}
puts my_rack_proc.call({})
puts "Command line argument you typed was: #{ARGV[0]}"