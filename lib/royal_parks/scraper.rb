class RoyalParks::Scraper 
 
    def self.scrape_parks 
      doc = Nokogiri::HTML(open("https://www.royalparks.org.uk/parks"))
      
      parks = doc.css("main#maincontent div.grid-item-with-description") 
      
      parks.each do|park|
        name = park.css("h4.white-text").text
        description = park.css("p.small").text
        url = park.css("a").attr("href") 
        #puts name
        #puts description
        #puts url
        RoyalParks::Park.new(name, description, url)
      end 
    end
    
end