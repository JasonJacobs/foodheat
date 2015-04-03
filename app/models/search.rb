class Search
  attr_accessor :cuisine

    CUISINES = 
    {
      "Japanese" => ["Japanese", "Sushi", "Ramen / Noodles", "Udon", "Sake Bar"],
      "Chinese" => ["Chinese", "Cantonese", "Dumplings", "Shanghai", "Szechuan"],
      "Mexican" => ["Mexican", "Tacos", "Taqueria"],
      "Coffee" => ["Coffee", "Café"],
      # "Bakery" => ["Bakery", "Bagels"],
      "BBQ" =>["BBQ"],
      # "Fried Chicken"
      #   categories = ["Fried Chicken", "Wings"],
      "Pizza" =>["Pizza"],
      "Caribbean" =>["Caribbean", "Jamaican"],
      "Italian" =>["Italian"],
      "Thai" =>["Thai"],
      "Indian" =>["Indian"],
      "French" =>["French"],
      "American" =>["Diner", "American", "New American"],
      "Southern" =>["Southern", "Soul Food", "Southern / Soul"],
      "Food Truck" => ["Food Truck"],
      "Greek" => ["Greek"],
      "Middle Eastern" => ["Turkish", "Lebanese", "Falafel", "Egyptian"],
      # "Fast Food" => ["Fast Food", "Fried Chicken"],
      "Kosher" => ["Kosher", "Kosher1", "Jewish"],
      "Russian" => ["Russian", "Ukrainian"], 
      "Polish" => ["Polish"], 
      "Vegetarian" => ["Vegetarian / Vegan", "Vegetarian", "Vegan"],
      "Korean" => ["Korean"],
      "Latin American" => ["Latin American", "Peruvian", "Cuban", "Dominican", "Mexican"],
      "Bodega" => ["Deli / Bodega"],
      "African" => ["African"],
      "Filipino" => ["Filipino"]
    }

  def initialize(cuisine)
    @cuisine = cuisine
  end

  def cuisines
    CUISINES
  end

  def search_for_cuisine 
    cuisines[cuisine].flat_map do |category|
      Cuisine.find_by(:name => category).restaurants
    end
  end

  def get_coordinates(array)
    array.collect do |restaurant|
      [restaurant[:latitude], restaurant[:longitude]]
    end
  end
end