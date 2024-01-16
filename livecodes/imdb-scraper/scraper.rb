require "open-uri"
require "nokogiri"

def scrape_top_5_movie_urls
  # TODO:
  # 1. Scrape the urls of the top 5 movies on https://www.imdb.com/chart/top/
  url = "https://www.imdb.com/chart/top/"
  html_file = URI.open(url, "User-Agent" => "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0").read
  html_doc = Nokogiri::HTML.parse(html_file)

  html_doc.search(".sc-1e00898e-0 .ipc-title-link-wrapper").first(5).map do |element|
    "https://www.imdb.com#{element.attribute('href').value.split('?').first}"
  end
end

def scrape_movie_info(movie_url)
  # TODO:
  # 2. Scrape the movie information for each of the movie urls
  html_file = URI.open(
    movie_url,
    'Accept-Language' => 'en',
    "User-Agent" => "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0"
  ).read
  html_doc = Nokogiri::HTML.parse(html_file)
  
  cast = html_doc.search(".sc-bfec09a1-5 .sc-bfec09a1-1").first(3).map do |celebrity|
    celebrity.text.strip
  end
  director = html_doc.search(".ipc-metadata-list-item__content-container").first.text.strip
  storyline = html_doc.search('.sc-466bb6c-2').text.strip
  title = html_doc.search('.hero__primary-text').text.strip
  year = html_doc.search(".sc-69e49b85-0 .ipc-inline-list__item").first.text.strip.to_i

  {
    cast: cast,
    director: director,
    storyline: storyline,
    title: title,
    year: year
  }
end
