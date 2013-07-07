# Execute http://rl-string-reverse.herokuapp.com/ using curl
print "Enter the string you'd like to see in reverse:"
user_string = gets.chomp
URL = "http://rl-string-reverse.herokuapp.com/reverse"
website_output = `curl --data \"str=#{user_string}\" #{URL}`.to_s
system "clear"
output_array = website_output.split("\n")
output_array.each {|line| line.gsub!(/<p>/, "")}
output_array.each {|line| line.gsub!(/<\/p>/, "")}
output_array.each {|line| line.gsub!("     ", " ")}
puts output_array[2]
puts output_array[3]