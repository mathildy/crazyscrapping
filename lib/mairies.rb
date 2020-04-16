require 'nokogiri'
require 'open-uri'

def emails
    
    doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    doc.css('a.lientxt').each do |node|
    @liens=[(node['href'].slice!(1,1000))]  
            
        @villes = node.text
        def list_emails

            doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com#{@liens[0]}"))
            doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |node|
        
            mails = node.text
            puts "#{@villes} => #{mails}."
            end
    
        end

    list_emails
    end

end

emails