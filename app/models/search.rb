class Search

  attr_accessor :cuisine

  def initialize(cuisine)
    @cuisine = cuisine
  end

  def search_for_cuisine

    case @cuisine
    when "Japanese"
      categories = ["Japanese", "Sushi", "Ramen / Noodles", "Udon", "Sake Bar"]
    when "Chinese"
      categories = ["Chinese", "Cantonese", "Dumplings", "Shanghai", "Szechuan"] 
    when "Mexican"
      categories = ["Mexican", "Tacos", "Taqueria"]
    when "Coffee Shops"
      categories = ["Coffee", "Café"]
    when "Bakery"
      categories = ["Bakery", "Bagels"]
    when "BBQ"
      categories = ["BBQ"]
    when "Fried Chicken"
      categories = ["Fried Chicken", "Wings"]
    when "Pizza"
      categories = ["Pizza"]
    when "Caribbean"
      categories = ["Caribbean", "Jamaican", "Dominican"]
    when "Italian"
      categories = ["Italian"]
    when "Thai"
      categories = ["Thai"]
    when "Indian"
      categories = ["Indian"]
    when "French"
      categories = ["French"]
    when "American / New American"
      categories = ["Diner", "American", "New American"]
    when "Southern"
      categories = ["Southern", "Soul Food", "Southern / Soul"]
    when "Food Truck"
      categories = ["Food Truck"]
    when "Greek"
      categories = ["Greek"]
    when "Middle Eastern"
      categories = ["Turkish", "Lebanese", "Falafel", "Egyptian"]
    when "Fast Food"
      categories = ["Fast Food", "Fried Chicken"]
    when "Kosher"
      categories = ["Kosher", "Kosher1", "Jewish"]
    when "Russian"
      categories = ["Russian", "Ukrainian"] 
    when "Polish"
      categories = ["Polish"] 
    when "Vegetarian"
      categories = ["Vegetarian / Vegan", "Vegetarian", "Vegan"]
    when "Korean"
      categories = ["Korean"]
    when "Latin American"
      categories = ["Latin American", "Peruvian", "Cuban"]
    when "Bodega"
      categories = ["Deli / Bodega"]
    end

    @results = []

    categories.each do |category|
      if Cuisine.find_by(:name => category)
        @results << Cuisine.find_by(:name => category).restaurants
      end
    end

    @results.flatten

  end

  def get_coordinates(array)
    array.collect do |restaurant|
      [restaurant[:latitude], restaurant[:longitude]]
    end
  end

end