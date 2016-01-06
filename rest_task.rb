require 'net/http'
require 'json'

id = ARGV[0].to_i
if id > 0 and id <=100
	url = "http://jsonplaceholder.typicode.com/posts/#{id}"
	json = JSON.parse(Net::HTTP.get(URI(url)))
	title = json["title"]
	body = json["body"]
	puts "Post title: #{title}\nPost body: #{body}"
else
	p "Wrong ID"
end