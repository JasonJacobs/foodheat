class AddDefaultsToRestaurants < ActiveRecord::Migration
  def change
    change_column :restaurants, :zipcode, :string, :default => ""
    change_column :restaurants, :city, :string, :default => ""
    change_column :restaurants, :phone_number, :string, :default => ""
    change_column :restaurants, :foursquare_url, :string, :default => ""
  end
end