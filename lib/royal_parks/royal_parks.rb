class RoyalParks::Park
    attr_accessor :name, :description, :url, :offers  
    @@all = []
   
    def initialize(name, description, url)
      @name = name
      @description = description
      @url = url
      @offers = []
      # notify park about the offer
      #add_to_park
      save
    end 

    def self.all 
      @@all 
    end

    def save
      @@all << self
    end

end