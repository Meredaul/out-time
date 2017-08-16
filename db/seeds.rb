require 'open-uri'
require 'nokogiri'

Pub.destroy_all

url = 'https://www.timeout.com/london/bars-and-pubs/the-100-best-bars-and-pubs-in-london'
html = open(url).read
doc = Nokogiri::HTML(html)
doc.css('.tabs .feature-item').each do |result|
  name = result.css('h3 a').text
  location = result.css('.listings_flag').text.strip
  image_url = result.css('img').attr('src').value
  Pub.create!(name: name, location: location, image_url: image_url)
end
