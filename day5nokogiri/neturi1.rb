require 'net/http'

uri = URI('http://rubylearning.com/data/text.txt')
res = Net::HTTP.get_response(uri) # returns Net::HTTPResponse object
# Net::HTTPResponse#code and Net::HTTPResponse#message return response data
puts res.code # => '200'
puts res.message # => 'OK'
# performs an HTTP GET request for text.txt
puts Net::HTTP.get(uri) # => String