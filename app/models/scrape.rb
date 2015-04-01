class Scrape

  attr_accessor :location, :query

  def initialize(location, query)
    @location = location
    @query = query
  end

  def call 
    restaurants = venues_hash.collect{|venue| venue}
    restaurants.each do |restaurant|
      # make a new restaurant if the venue id is not in the DB
      if !Restaurant.find_by(:foursquare_id => restaurant["id"])
        @restaurant = Restaurant.new
        @restaurant.foursquare_id = restaurant["id"]
        @restaurant.name = restaurant["name"]
        @restaurant.latitude = restaurant["location"]["lat"]
        @restaurant.longitude = restaurant["location"]["lng"]
        @restaurant.zipcode = restaurant["location"]["postalCode"] if restaurant["location"] 
        @restaurant.city = restaurant["location"]["city"] if restaurant["location"]
        @restaurant.phone_number = restaurant["contact"]["phone"] if restaurant["contact"]
        @restaurant.foursquare_url = to_slug(@restaurant.name)
        @cuisine = Cuisine.find_or_create_by(:name => restaurant["categories"][0]["shortName"])
        @restaurant.cuisines << @cuisine
        @restaurant.save
      else
        @restaurant = Restaurant.find_by(:foursquare_id => restaurant["id"])
        @cuisine = Cuisine.find_or_create_by(:name => restaurant["categories"][0]["shortName"])
        if !@restaurant.cuisine_ids.include?(@cuisine.id)
          @restaurant.cuisines << @cuisine
        end
      end
    end
  end

  def venues_hash

      JSON.parse(open("https://api.foursquare.com/v2/venues/search?client_id=#{ENV["client_id"]}&client_secret=#{ENV["client_secret"]}&v=20130815&near=#{location}&limit=50&query=#{query}").read)["response"]["venues"]
    end

  private

  def to_slug(name)
    slug = name.downcase.gsub(" ", "-").gsub("&", "-").gsub("---", "--")
    "https://foursquare.com/v/#{slug}/#{@restaurant.foursquare_id}"
  end

end
