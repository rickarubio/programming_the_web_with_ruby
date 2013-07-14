class MyApp
	ARGV[0] = "first argument"
	def call(env)
		[201, {"Content-Type" => "text/plain"}, 
			["Command line argument you typed was: #{ARGV[0]}"]]
	end
end