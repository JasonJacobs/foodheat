class RestaurantsController < ApplicationController

  def index
  end

  def search
    @search = Search.new(params[:cuisine])
  end

end
