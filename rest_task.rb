require 'net/http'
require 'json'

def numeric string
    true if Float(string) != nil rescue false
end

id = ARGV[0].to_i
if id > 0 and id <=100 and numeric(ARGV[0])
	url = "http://jsonplaceholder.typicode.com/posts/#{id}"
	json = JSON.parse(Net::HTTP.get(URI(url)))
	title = json["title"]
	body = json["body"]
	userId = json["userId"]
	postId = json["id"]
	puts "Post title: #{title}\nPost body: #{body}\nPost id: #{postId}\nUser id: #{userId}"
else
	p "Wrong Input"
end