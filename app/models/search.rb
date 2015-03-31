class Search

  attr_accessor :cuisine

  def initialize(cuisine)
    @cuisine = cuisine
    search_for_cuisine
  end

  def search_for_cuisine

    case @cuisine
    when "Japanese"
      categories = ["Japanese", "Sushi", "Ramen", "Udon"]
    when "Chinese"
      categories = ["Chinese", "Cantonese", "Dumplings"]
    end

    results = []

    categories.each do |category|
      if Cuisine.find_by(:name => category)
        results << Cuisine.find_by(:name => category).restaurants
      end
    end

    results
  end

end