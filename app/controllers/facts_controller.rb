class FactsController < ApplicationController
  
  def create
    @cuisine = Cuisine.find_by("name LIKE ?", "%#{params[:cuisine]}%")
    respond_to do |f|
      f.js
    end
  end

end
