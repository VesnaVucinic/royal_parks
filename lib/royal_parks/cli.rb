class RoyalParks::CLI

    def call
        puts "Welcome to the Royal Parks of London!"
        #binding.pry
    end

    def get_royal_parks
        #to be scraped
        @parks = RoyalParks::Park.all
    end

end