require 'sinatra/base'
require 'tilt/erubis' # Fixes a warning
require 'rack/cors'
require 'pry'
require './db/setup'
require './lib/all'
require 'haversine'
require 'httparty'

class TransitBossApp < Sinatra::Base
	before do
		headers["Content-Type"] = "application/json"
	end

	use Rack::Cors do
		allow do
			origins '*'
			resource '*', headers: :any, methods: :get
		end
	end

	get "/cbikeshare" do 
		user_lat = params["lat"] 
		user_long = params["long"]
		b = HTTParty.get("http://www.capitalbikeshare.com/data/stations/bikeStations.xml")
		d = b["stations"]["station"]
		# if d.count > 0
		# 	d.each do |station|
		{id:         d["id"],
			name:      d["name"],
			bikes:     d["nbBikes"],
			empty:     d["nbEmptyDocks"],
			dock_lat:  d[38],
			dock_long: d[-77]}
			binding.pry
		end


		# get "/train" do
		# 	user_lat = params["lat"] 
		# 	user_long = params["long"]
		# end


if $PROGRAM_NAME == __FILE__
  TransitBossApp.start!
end

