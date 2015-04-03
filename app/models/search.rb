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

<<<<<<< HEAD
  def cuisines
    CUISINES
  end
=======
  def search_for_cuisine

    case @cuisine
    when "Japanese"
      categories = ["Japanese", "Sushi", "Ramen / Noodles", "Udon", "Sake Bar"]
    when "Chinese"
      categories = ["Chinese", "Cantonese", "Dumplings", "Shanghai", "Szechuan"] 
    when "Mexican"
      categories = ["Mexican", "Tacos", "Taqueria"]
    when "Coffee"
      categories = ["Coffee", "Café"]
    # when "Bakery"
    #   categories = ["Bakery", "Bagels"]
    when "BBQ"
      categories = ["BBQ"]
    # when "Fried Chicken"
    #   categories = ["Fried Chicken", "Wings"]
    when "Pizza"
      categories = ["Pizza"]
    when "Caribbean"
      categories = ["Caribbean", "Jamaican"]
    when "Italian"
      categories = ["Italian"]
    when "Thai"
      categories = ["Thai"]
    when "Indian"
      categories = ["Indian"]
    when "French"
      categories = ["French"]
    when "American"
      categories = ["Diner", "American", "New American"]
    when "Southern"
      categories = ["Southern", "Soul Food", "Southern / Soul"]
    when "Food Truck"
      categories = ["Food Truck"]
    when "Greek"
      categories = ["Greek"]
    when "Middle Eastern"
      categories = ["Turkish", "Lebanese", "Falafel", "Egyptian"]
    # when "Fast Food"
    #   categories = ["Fast Food", "Fried Chicken"]
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
      categories = ["Latin American", "Peruvian", "Cuban", "Dominican", "Mexican"]
    when "Bodega"
      categories = ["Deli / Bodega"]
    when "African"
      categories = ["African", "Ethiopian"]
    when "Filipino"
      categories = ["Filipino"]
    end

    @results = []
>>>>>>> d9ba8a7698dabf4a0770fdc43f2aba9821c08903

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