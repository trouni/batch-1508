require_relative 'scraper'
require 'yaml'

puts "Scraping the top 5 movie urls..."
movie_urls = scrape_top_5_movie_urls

movies = movie_urls.map do |movie_url|
  puts "Scraping #{movie_url}"
  scrape_movie_info(movie_url)
end

puts "Writing the movies.yml file..."
File.open('movies.yml', 'wb') do |file|
  file.write(movies.to_yaml)
end