
class RoyalParks::Scraper 
 
    def self.scrape_parks 
      doc = Nokogiri::HTML(open("https://www.royalparks.org.uk/parks"))
      
      parks = doc.css("main#maincontent div.grid-item-with-description") 
      
      parks.each do|park|
        name = park.css("h4.white-text").text
        description = park.css("p.small").text
        url = park.css("a").attr("href") 
        # all above information are turned into park objects by attr accessor in royal_parks.rb
        RoyalParks::Park.new(name, description, url) 
      end 
      # parks.each do|park|
      # attributes = { ##it is hash keys - values
      #   name: park.css("h4.white-text").text,   #it could be park.name= 
      #   description: park.css("p.small").text,   #park.description=  
      #   url:  park.css("a").attr("href")         #park.url=
      # } 
      #   RoyalParks::Park.new(attributes)
      # end 


    end

    def self.scrape_offers(park)
      doc = Nokogiri::HTML(open(park.url))
      
      offers = doc.css("div.row div.grid-item")

      offers.each do |offer| # this coming from nokogiri like offer_html
        name = offer.css("h4").text
        link = offer.css("a").attr("href")  
        RoyalParks::Offer.new(name, park, link)
      end 
  end

end 