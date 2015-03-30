class RestaurantNeighborhood < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :neighborhood
end
