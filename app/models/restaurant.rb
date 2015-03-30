class Restaurant < ActiveRecord::Base
  has_many :restaurant_cuisines
  has_many :restaurant_neighborhoods
  has_many :neighborhoods, :through => :restaurant_neighborhoods
  has_many :cuisines, :through => :restaurant_cuisines
end
