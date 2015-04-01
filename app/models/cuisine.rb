class Cuisine < ActiveRecord::Base
  has_many :restaurant_cuisines
  has_many :restaurants, :through => :restaurant_cuisines

  validate :name, uniqueness: true
end