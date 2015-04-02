class RestaurantsController < ApplicationController

  def index
    @cuisines = ["Japanese", "Chinese", "Mexican", "Coffee Shops", "BBQ", "Pizza", "Caribbean", "Italian", "Thai", "Indian", "French", "American", "Southern", "Food Truck", "Greek", "Middle Eastern", "Kosher", "Russian", "Vegetarian", "Polish", "Korean", "Latin American", "Bodega"].sort_by{|cuisine|cuisine.downcase}
  end

  def search
    @search = Search.new(params[:cuisine])
    @restaurants = @search.search_for_cuisine
    @coordinates = @search.get_coordinates(@restaurants)
    respond_to do |f|
      f.js
    end
  end

end
