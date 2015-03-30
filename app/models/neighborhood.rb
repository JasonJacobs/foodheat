class Neighborhood < ActiveRecord::Base
  has_many :restaurant_neighborhoods
  has_many :restaurants, :through => :restaurant_neighborhoods
  has_many :cuisines, :through => :restaurants
  
end
