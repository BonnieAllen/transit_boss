require 'minitest/autorun'
require 'rack/test'

#ENV["TEST"] = ENV["RACK_ENV"] = "test"

require './db/setup'
require './lib/all'
require './server'
require 'pry'


class TransitBossAppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    TransitBossApp
  end

  def test_bike
    get "/cbikeshare",
    lat: 38,
    long: -77
  end
end