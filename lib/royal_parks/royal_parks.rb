class RoyalParks::Park
    attr_accessor :name, :description, :url, :offers  #same like I made methods that why I can call them on park
    #attr_reader :offers I set up offers as empty array in initialize
    @@all = []
   
    def initialize(name, description, url)
      @name = name
      @description = description
      @url = url
      @offers = []
      save
    end 

    #def initialize(att_hash)
    #   @name = att_hash[:name]
    #   @description = att_hash[:description]
    #   @url = att_hash[:url]
    #   or send method
    #   att_hash.each do |key, value|
    #     self.send("#{key}=", value) #interpolation changes simbol to setter or writter method
    #   end
    #   save  to save all information in @@all
    # end    
    # 


    def self.all # method that take from #scrape_parks data and returns them in @@all and keeps track of all parks
      RoyalParks::Scraper.scrape_parks if @@all.empty?
      @@all 
    end

    def get_offers # method that take from #scrape_offers data and put them in @offers in initialize
      RoyalParks::Scraper.scrape_offers(self) if @offers.empty? #self is current peark I am working with
    end 

    def save
      @@all << self
    end

end