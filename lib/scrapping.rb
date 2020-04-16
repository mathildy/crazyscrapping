require 'nokogiri'
require 'open-uri'

def dark_trader
    page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all'))

    currencies = []
    prices = [] 

    page.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[3]').each do |tr|
        currencies << tr.text
    end


    page.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]').each do |tr|
        prices << tr.text
    end

    puts a = Hash[currencies.zip(prices)]
end

dark_trader