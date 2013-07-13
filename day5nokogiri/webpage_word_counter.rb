# webpage_word_counter.rb
# Use each of the following for separate solutions:
# net/http library and URI
# open-uri
# Nokogiri
require 'net/http'

# Example 1: Using net/http and URI libraries
WEBSITE = "http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html"
str = Net::HTTP.get(URI(WEBSITE))

def count_occurences_of_the(string)
	# remove everything in the <head>...</head> tags
	string.gsub!(/<head>[^\/head].*\/head>/m, "")
	# get rid of <script>...</script> tags
	string.gsub!(/<script.+[^\/script]\/script>/m, "")
	# remove html tags
	string.gsub!(/<\/?[^>]*>/, "")
	# get the number of occurences of the word "the"
	puts string.split(/[^\w]the[^\w]/i).count
end

count_occurences_of_the(str)

# Example 2: Using Open-URI
require 'open-uri'
str = ""
open(WEBSITE) {|f| f.each_line {|line| str += line}}
count_occurences_of_the(str)

# Example 3: Using Nokogiri
require 'Nokogiri'
doc = Nokogiri::HTML(open(WEBSITE))
doc.xpath("//script").remove
puts count_occurences_of_the(doc.xpath("//text()").to_s)