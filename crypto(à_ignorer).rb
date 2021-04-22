require 'byebug'
require 'nokogiri'
require 'httparty'
   
def scraper

url = "https://coinmarketcap.com/all/views/all/"
url = HTTParty.get(url)
parsed_page = Nokogiri::HTML(url)

foots1 = Array.new
foots2 = Array.new

name_listings = parsed_page.css('div.price___3rj7O ')

puts name_listings.count


=begin 
name_listings.each do |foot_listing|

  titre = {title: foot_listing.css('span.other-project-title.jsl10n').text}
  text = {text: foot_listing.css('span.other-project-tagline.jsl10n').text}

  
  foots1 << titre
  foots2 << text
  
  end

  tot = Array[foots1.zip(foots2.map {|i| i.include?(',') ? (i.split /, /) : i})]

  puts tot

  #byebug
=end

end

scraper