class RoyalParks::CLI

    def call
        puts "Welcome to the Royal Parks of London!"
        #binding.pry
        get_royal_parks
        list_parks
    end

    def get_royal_parks
        #to be scraped
        @parks = RoyalParks::Park.all
    end

    def list_parks
        puts 'Choose a park to see offers.'
        @parks.each.with_index(1) do |park, index| 
          puts "#{index}. #{park.name}"
        end
      end

end