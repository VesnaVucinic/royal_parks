class RoyalParks::Offer
    attr_accessor :name, :park, :link
    @@all = []
     
    def initialize(name, park, link)
      @name = name
      @park = park
      @link = link
      # notify park about the offer
      add_to_park
      save
    end 
    
    def self.all 
      @@all 
    end
    
    def add_to_park
      @park.offers << self unless @park.offers.include?(self)
    end 
    
    def save
      @@all << self
    end
  end 