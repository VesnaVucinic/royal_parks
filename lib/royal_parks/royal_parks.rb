class RoyalParks::Park
    attr_accessor :name, :description, :url, :offers  #same like I made methods that why I can call them on park
    @@all = []

    #Ruby class can produce new instances of itself, via the <Class Name>.new method, whether or not that class has
    # an #initialize method. However, if we want each instance of our class to be created with certain attributes,
    # we must define an #initialize method. An #initialize method is a method that is called automatically whenever
     #new is used.

     #When #new is called with an argument, it will pass that argument (or arguments) to the #initialize method and
     # invoke that method. The code in #initialize will then run, using any arguments from #new.The initialize method
     # is what's called a callback, hook or life-cycle method, because it is automatically invoked every time 
     #the #new method is used to create a new instance of the class.

   
    def initialize(name, description, url)
      @name = name
      @description = description
      @url = url
      @offers = [] 
      # Here I set an instance variable, @offers, equal to an empty array. I use instance variables to store the 
      #attributes of a given instance park of a class RoyalParks::Park. 
      # This instance variable is set equal to an empty array because our park doesn't have any offers yet.
      save
      #In #initialize we use the self keyword to refer to the new object that has just been created by #new.
      #when #new is called, it creates a new instance of the class and then calls #initialize on that new instance. 
      #So, #initialize is technically an instance method.
      # Inside an instance method we are in what is called method scope and self will refer to whichever instance 
      #the method is being called on.
    end 

    def self.all # method that take from #scrape_parks data and returns them in @@all and keeps track of all parks
      RoyalParks::Scraper.scrape_parks if @@all.empty?
      @@all 
      #The method simply return the @@all array, which contains the list of parks
      #class method to access and print out the name of each park instance stored in class variable.
      #now I can call #all class method on the RoyalParks::Park class:
      #RoyalParks::Park.all
    end

    def get_offers # method that take from #scrape_offers data and put them in @offers in initialize
      RoyalParks::Scraper.scrape_offers(self) if @offers.empty? #self is current peark I am working with
    end 

    def save
      @@all << self #self keyword to refer to the new object that has just been created by #new.
      #We push self into the array that is stored in @@all. In this way, the @@all class variable will point to
      # a growing array that contains every instance of the RoyalParks::Park class that gets created.
      #We used a class variable to store a collection of instances of that class. We added new instances, to this 
      #storage container every time a new instance was created, with the help of the self keyword in our #initialize method. 
    end

end