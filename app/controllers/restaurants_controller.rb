class RestaurantsController < ApplicationController

  def index
    @cuisines= Search::CUISINES.keys.sort_by{|cuisine|cuisine.downcase}
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
