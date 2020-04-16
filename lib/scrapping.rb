require 'rubygems'
require 'nokogiri'
require 'open-uri'

#les noms
def crypto_scrapper
   page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all"))
return page.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[3]')
end

puts crypto_scrapper.text 

#les values 
def crypto_values

    #page = page.map{|i| i.delete("$")}
    #page = page.map(&:to_f)

    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all"))
 return page.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]')
 end

puts crypto_values.text



#array


puts "#{array = Hash[crypto_scrapper.text(crypto_values.text)]}"
