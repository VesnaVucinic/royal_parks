class RoyalParks::CLI

    def call
      puts "\n"
      puts "Welcome to the Royal Parks of London!".colorize(:green)
      @input = ""
      until @input == "exit"
        get_royal_parks
        list_parks
        get_user_park
        what_next
      end 
      goodbye
    end

    def get_royal_parks
        @parks = RoyalParks::Park.all
    end

    def list_parks
      puts 'Here is some basic information about each Royal Park.'.colorize(:green)
      puts "\n"
        @parks.each.with_index(1) do |park, index| 
          puts "#{index}. #{park.name}".colorize(:red)
          puts park.description.colorize(:blue)
          puts park.url
          puts "\n"
        end
      puts 'Select a park by choosing a number 1 - 10 to see the park offers.'.colorize(:green)
      puts "\n"
    end

    def get_user_park
      chosen_park = gets.strip.to_i
      if valid_input(chosen_park, @parks)
        list_offers_for(chosen_park)
      else
        puts "Sorry! I didn't understand command. Please select number 1 -10".colorize(:green)
        get_user_park
      end
    end 
    
    def valid_input(input, data)
      input.to_i <= data.length && input.to_i > 0
    end
    
    def list_offers_for(chosen_park)
      park = @parks[chosen_park - 1]
      park.get_offers
      puts "\n"
      puts "Here are the offers for #{park.name}:".colorize(:green)
      puts "\n"
      park.offers.each.with_index(1) do |offer, idx|
        puts "#{idx}. #{offer.name}".colorize(:red)
        puts offer.link
        puts "\n"
      end
    end

    def what_next
      puts "Are you done? Type 'exit' to exit or hit key to see more parks.".colorize(:green)
      puts "\n"
      @input = gets.strip
    end 

    def goodbye
      puts "\n"
      puts "HAVE GREAT TIME IN LONDON ROYAL PARKS!".colorize(:green)
      puts "\n"
    end 

end