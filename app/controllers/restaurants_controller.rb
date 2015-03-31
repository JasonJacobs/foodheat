class RestaurantsController < ApplicationController

  def index
    @cuisines = ["Japanese", "Chinese", "Mexican", "Coffee Shops", "Bakery", "BBQ", "Pizza", "Caribbean", "Italian", "Thai", "Indian", "French", "American / New American", "Southern", "Food Truck", "Greek", "Middle Eastern", "Fast Food"].sort
  end

  def search
    @search = Search.new(params[:cuisine])
    @coordinates = @search.get_coordinates(@search.search_for_cuisine)
    # new google.maps.LatLng(37.782551, -122.445368),
    
    respond_to do |f|
      f.js
    end
  end

end
