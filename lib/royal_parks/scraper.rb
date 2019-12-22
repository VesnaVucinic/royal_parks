
class RoyalParks::Scraper 
 
    def self.scrape_parks 
      doc = Nokogiri::HTML(open("https://www.royalparks.org.uk/parks"))
      
      parks = doc.css("main#maincontent div.grid-item-with-description") 
      
      parks.each do|park|
        name = park.css("h4.white-text").text
        description = park.css("p.small").text
        url = park.css("a").attr("href") 
        RoyalParks::Park.new(name, description, url)
      end 
    end

    def self.scrape_offers(park)
      doc = Nokogiri::HTML(open(park.url))
      
      offers = doc.css("div.row div.grid-item")

      offers.each do |offer|
        name = offer.css("h4").text
        link = offer.css("a").attr("href")  
        RoyalParks::Offer.new(name, park, link)
      end 
  end
   
end