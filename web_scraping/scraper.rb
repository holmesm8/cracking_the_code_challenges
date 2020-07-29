require 'httparty'
# require 'nokogiri'
require 'pry'
# require 'json'

# def scraper
#   url = 'https://www.goodreads.com/shelf/show/trending'
#   response = HTTParty.get(url).parsed_response
#   # body = JSON.parse(response)
#   # unparsed_page.parsed_response
#   # parsed_page = Nokogiri::HTML(unparsed_page)
#   # testy = unparsed_page.code
#   # testy1 = unparsed_page.response
#   require 'pry'; binding.pry
# end

# scraper

require 'net/http'
require 'json'

def testy
  url = 'https://api.spotify.com/v1/search?type=artist&q=tycho'
  response = HTTParty.get(url)
  response.parsed_response
  require 'pry'; binding.pry
  json_response = JSON.parse(response.body, symbolize_names: true)
end

testy

# response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

# puts response.body, response.code, response.message, response.headers.inspect

# # Or wrap things up in your own class
# class StackExchange
#   include HTTParty
#   base_uri 'api.stackexchange.com'

#   def initialize(service, page)
#     @options = { query: { site: service, page: page } }
#   end

#   def questions
#     self.class.get("/2.2/questions", @options)
#   end

#   def users
#     self.class.get("/2.2/users", @options)
#   end
# end

# stack_exchange = StackExchange.new("stackoverflow", 1)
# puts stack_exchange.questions
# puts stack_exchange.users