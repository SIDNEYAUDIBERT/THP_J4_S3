require 'nokogiri'
require 'open-uri'
require 'pry'
require 'rubocop'

def scrapper
    doc = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))
end

def scrapping
  
    doc = scrapper

    symbol = Array.new
    price = Array.new

    doc.xpath('//tr/td[3]').each do |link|
        symbol << link.text
    end

    doc.xpath('//tr/td[5]').each do |link|
        price << link.text
    end


array_final = Hash[symbol.zip(price)]

puts array_final

end

scrapping