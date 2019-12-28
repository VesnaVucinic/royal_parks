require_relative "royal_parks/version"
require_relative "royal_parks/cli"
require_relative "royal_parks/royal_parks"
require_relative "royal_parks/offers"
require_relative "royal_parks/scraper"


require "pry"
require 'nokogiri'
require 'open-uri'
require 'colorize'


module RoyalParks
  class Error < StandardError; end
  # Your code goes here...
end
