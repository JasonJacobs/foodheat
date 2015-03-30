class CreateRestaurantNeighborhoods < ActiveRecord::Migration
  def change
    create_table :restaurant_neighborhoods do |t|
      t.integer :restaurant_id
      t.integer :neighborhood_id

      t.timestamps null: false
    end
  end
end
