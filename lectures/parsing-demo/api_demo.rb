require "json"
require "open-uri"

puts "Please enter a GitHub username:"
print '> '
username = gets.chomp

# TODO - Let's fetch name and bio from a given GitHub username
url = "https://api.github.com/users/#{username}"
serialized_json = URI.open(url).read

# Once the data is downloaded, we parse it
user = JSON.parse(serialized_json)

# Once it's parsed, we're just back to a normal hash
puts "#{user['name']} is in #{user['location']} and has #{user['public_repos']} public repos."
