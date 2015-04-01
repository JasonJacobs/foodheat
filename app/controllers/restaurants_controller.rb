class RestaurantsController < ApplicationController

  def index
    @cuisines = ["Japanese", "Chinese", "Mexican", "Coffee Shops", "Bakery", "BBQ", "Pizza", "Caribbean", "Italian", "Thai", "Indian", "French", "American / New American", "Southern", "Food Truck", "Greek", "Middle Eastern", "Fast Food", "Kosher", "Russian", "Vegetarian", "Fried Chicken", "Polish"].sort
  end

  def search
    @search = Search.new(params[:cuisine])
    @coordinates = @search.get_coordinates(@search.search_for_cuisine)
    respond_to do |f|
      f.js
    end
  end

end
