class RoyalParks::Park
    attr_accessor :name, :offers, :url 
    @@all = []
   
    def initialize(name, park, url)
      @name = name
      @park = park
      @url = url
      # notify park about the offer
      #add_to_park
      save
    end 