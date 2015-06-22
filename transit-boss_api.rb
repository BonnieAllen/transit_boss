#with this I tried doing what you just explained in class. Of course I did this on Saturday (June 20), 
#I was not familiar with all of the pieces needed to make the TransitBossAPI work like your BikeShareStation object


require "json"
require 'rack/cors'
require 'pry'
require 'httparty'

class TransitBossAPI
  include HTTParty
  
  base_uri "http://www.capitalbikeshare.com/data/stations/bikeStations.xml"


  # def TransitBossAPI 
  #   raw = "http://www.capitalbikeshare.com/data/stations/bikeStations.xml"
  #   TransitBossAPI.get(URI.escape(raw))
  # end
  
  # attr_accessor :id, :name, :nbBikes, :nbEmptyDocks, :doc_lat, :doc_long
  
  # def initialize(id, name, nbBikes, nbEmptyDocks, doc_lat, doc_long)
  #   self.id = id
  #   self.name = name
  #   self.nbBikes = nbBikes
  #   self.nbEmptyDocks = nbEmptyDocks
  #   self.doc_lat = doc_lat
  #   self.doc_long = doc_long
  # end

  # def cbikeshare_distance
  # 	response = self.class.get("#{http://www.capitalbikeshare.com/data/stations/bikeStations.xml}/#{}")
  # end

#   def self.find(id)
#     response = get("/bikes"/#{id}.json)
#     if response.success?
#       self.new(response["id"], response["name"], ["nbBikes"], ["nbEmptyDocks"], ["doc_lat"], ["doc_long"])
#     else
#       raise response.response
#     end
#   end
# end