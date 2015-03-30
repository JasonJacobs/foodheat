class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :foursquare_id
      t.float :latitude
      t.float :longitude
      t.string :zipcode
      t.string :city
      t.string :phone_number
      t.string :foursquare_url

      t.timestamps null: false
    end
  end
end
