class RoyalParks::Park
    attr_accessor :name, :description, :url, :offers  
    @@all = []
   
    def initialize(name, description, url)
      @name = name
      @description = description
      @url = url
      @offers = []
      save
    end 

    def self.all 
      RoyalParks::Scraper.scrape_parks if @@all.empty?
      @@all 
    end

    def get_offers
      RoyalParks::Scraper.scrape_offers(self) if @offers.empty?
    end 

    def save
      @@all << self
    end

end