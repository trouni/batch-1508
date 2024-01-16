require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com

# Download the HTML page from the web
ingredient = gets.chomp
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"
serialized_html = URI.open(url).read

# We parse the serialized HTML using the Nokogiri gem
html_doc = Nokogiri::HTML.parse(serialized_html)

# Search the desired HTML element through the HTML doc using `.search` method and a CSS selector
html_doc.search(".layout-md-rail__primary .card__content a").each do |element|
  puts '-' * 50
  # Extract the relevant data from the HTML element
  puts element.text.strip # extract the text from the HTML tag
  puts element.attribute("href").value # extract specific attributes of that HTML element (e.g. href, src, class, ...)
end