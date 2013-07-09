require 'net/http'
# returns an object whose methods host, port, and path supply different parts
# of the URL for Net::HTTP to use.
url = URI.parse('http://rubylearning.com/data/text.txt')

Net::HTTP.start(url.host, url.port) do |http|
  req = Net::HTTP::Get.new(url.path)
  puts http.request(req).body
end