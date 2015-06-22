class CreateDataModels < ActiveRecord::Migration
  def change
  	create_tables "cbikeshares" do |t|
  		t.integer :station_id
  		t.string  :location_name
  		t.float   :cbikeshare_latitude
  		t.float   :cbikeshare_longitude
  end

  create_tables "trains" do |t|
  	t.string  :name
  	t.string  :address
  	t. string :code
  	t.float   :latitude
  	t.float   :longitude 
end
