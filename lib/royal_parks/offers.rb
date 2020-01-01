class RoyalParks::Offer
  attr_accessor :name, :park, :link
  @@all = []
   
  def initialize(name, park, link)
    @name = name
    @park = park
    @link = link
    add_to_park # notify park about the offers
    save
  end 

  def self.all #Exposing the Collection
    @@all
    #The method simply return the @@all array, which contains the list of offers
    # that the park has many of.
    #class method to access and print out the name of each offer instance stored in class variable.
    #now I can call #all class method on the RoyalParks::Offer class:
    #RoyalParks::Offer.all
  end

  def add_to_park
    @park.offers << self unless @park.offers.include?(self) # I have access to instance variable park here 
    # it's got an attribut of offers which is an array, I am going to shovel in self which is instance of parks,
    #parks's responsibility to add a new offer to their collection
  end 

  def save  
    @@all << self 
  end
end 