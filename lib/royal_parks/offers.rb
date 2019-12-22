class RoyalParks::Offer
  attr_accessor :name, :park, :link
  @@all = []
   
  def initialize(name, park, link)
    @name = name
    @park = park
    @link = link
  save
  end 

  def self.all 
    @@all 
  end

  def save
    @@all << self
  end
end 