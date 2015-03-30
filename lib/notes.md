cobblehill = Neighborhood.new
ZIPS = [11217, 11201, 11211]

ZIPS.each.do |zip|
  zip.build_restaurants(cuisine)
end

Neighborhood
has_many :restaurant_neighborhoods
has_many :restaurants, :through => :restaurant_neighborhoods
has_many :cuisines, :through => :restaurants
:name

RestaurantNeighborhoods
belongs_to :restaurant
belongs_to :neighborhood
:restaurant_id, :neighborhood_id

Restaurant
has_many :restaurant_cuisines
has_many :restaurant_neighborhoods
belongs_to :neighborhood
:name, :foursquare_id, :lat, :long, :zipcode, :city, :phone_number, :foursquare_url 

RestaurantCuisines
belongs_to :cuisine
belongs_to :restaurant
:cuisine_id, :restaurant_id

Cuisine
has_many :restaurant_cuisines
:name
