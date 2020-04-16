require 'nokogiri'
require 'open-uri'

def get_townhall_email(townhall_url)
    page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
    page.css('a.lientxt').each do |node|
    end




end 