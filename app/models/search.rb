class Search

  attr_accessor :cuisine

  def initialize(cuisine)
    @cuisine = cuisine
  end

  def search_for_cuisine

    case @cuisine
    when "Japanese"
      categories = ["Japanese", "Sushi", "Ramen", "Udon"]
    when "Chinese"
      categories = ["Chinese", "Cantonese", "Dumplings"] 
    when "Mexican"
      categories = ["Mexican", "Tacos", "Taqueria"]
    when "Coffee Shops"
      categories = ["Coffee", "Café"]
    when "Bakery"
      categories = ["Bakery", "Bagels"]
    when "BBQ"
      categories = ["BBQ"]
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
      categories = ["Southern", "Soul Food"]
    when "Food  Truck"
      categories = ["Food Truck"]
    when "Greek"
      categories = ["Greek"]
    when "Middle Eastern"
      categories = ["Turkish", "Lebanese", "Falafel"]
    when "Fast Food"
      categories = ["Fast Food", "Fried Chicken"]
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