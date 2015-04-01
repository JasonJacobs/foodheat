# BK_ZIPS = ["11201", "11202", "11203", "11204", "11205", "11206", "11207", "11208", "11209", "11210", "11211", "11212", "11213", "11214", "11215", "11216", "11217", "11218", "11219", "11220", "11221", "11222", "11223", "11224", "11225", "11226", "11228", "11229", "11230", "11231", "11232", "11233", "11234", "11235", "11236", "11237", "11238", "11239", "11240", "11241", "11242", "11243", "11244", "11245", "11247", "11248", "11249", "11251", "11252", "11254", "11255", "11256"]


# QUEENS_ZIPS =["11421","11422","11423","11424","11425","11426","11427","11428","11429","11430","11431","11432","11433","11434","11435","11436","11439","11451","11499","11690","11691","11692","11693","11694","11695","11697"]

#   # "11004","11005","11101","11102","11103","11104","11105","11106","11109","11120","11351","11352","11354","11355","11356","11357","11358","11359","11360","11361","11362","11363","11364","11365","11366","11367","11368","11369","11370","11371","11372", "11373","11374","11375","11377","11378","11379","11380","11381","11385","11386","11390","11405","11411","11412","11413","11414","11415","11416","11417","11418","11419","11420",

# cuisine_list = ["Afghan Restaurant", "African Restaurant", "American Restaurant", "Arepa Restaurant", "Argentinian Restaurant", "Asian Restaurant", "Australian Restaurant", "Austrian Restaurant", "BBQ Joint", "Bagel Shop", "Bakery", "Belgian Restaurant", "Bistro", "Brazilian Restaurant", "Breakfast Spot", "Bubble Tea Shop", "Buffet", "Burger Joint", "Burrito Place", "Cafeteria", "Cafe", "Cajun Restaurant", "Creole Restaurant", "Cambodian Restaurant", "Caribbean Restaurant", "Chinese Restaurant", "Coffee Shop", "Comfort Food Restaurant", "Creperie", "Cuban Restaurant", "Cupcake Shop", "Czech Restaurant", "Deli", "Bodega", "Dessert Shop", "Dim Sum Restaurant", "Diner", "Distillery", "Donut Shop", "Dumpling Restaurant", "Eastern European Restaurant", "English Restaurant", "Ethiopian Restaurant", "Falafel Restaurant", "Fast Food Restaurant", "Filipino Restaurant", "Fish & Chips Shop", "Fondue Restaurant", "Food Truck", "French Restaurant", "Fried Chicken Joint", "Gastropub", "German Restaurant", "Gluten-free Restaurant", "Greek Restaurant", "Halal Restaurant", "Hawaiian Restaurant", "Himalayan Restaurant", "Hot Dog Joint", "Hotpot Restaurant", "Hungarian Restaurant", "Ice Cream Shop", "Indian Restaurant", "Indonesian Restaurant", "Irish Pub", "Italian Restaurant", "Japanese Restaurant", "Jewish Restaurant", "Juice Bar", "Korean Restaurant", "Kosher Restaurant", "Latin American Restaurant", "Mac & Cheese Joint", "Malaysian Restaurant", "Mediterranean Restaurant", "Mexican Restaurant", "Middle Eastern Restaurant", "Modern European Restaurant", "Molecular Gastronomy Restaurant", "Mongolian Restaurant", "Moroccan Restaurant", "New American Restaurant", "Pakistani Restaurant", "Persian Restaurant", "Peruvian Restaurant", "Pie Shop", "Pizza Place", "Polish Restaurant", "Portuguese Restaurant", "Ramen", "Noodle House", "Restaurant", "Romanian Restaurant", "Russian Restaurant", "Salad Place", "Sandwich Place", "Scandinavian Restaurant", "Seafood Restaurant", "Snack Place", "Soup Place", "South American Restaurant", "Southern Restaurant", "Soul Food Restaurant", "Souvlaki Shop", "Spanish Restaurant", "Sri Lankan Restaurant", "Steakhouse", "Sushi Restaurant", "Swiss Restaurant", "Taco Place", "Tapas Restaurant", "Tea Room", "Thai Restaurant", "Tibetan Restaurant", "Turkish Restaurant", "Kebab Restaurant", "Ukrainian Restaurant", "Vegetarian Restaurant", "Vegan Restaurant", "Vietnamese Restaurant", "Winery", "Wings Joint", "Frozen Yogurt"]

# QUEENS_ZIPS.each do |zip|
#   cuisine_list.each do |cuisine|
#     Scrape.new(zip, cuisine).call
#   end
# end


# QUEENS_ZIPS.each do |zip|
#   cuisine_list.each do |cuisine|
#     Scrape.new(zip, cuisine).call
#   end
# end
cuisine_array = ["Japanese", "Chinese", "Mexican", "Coffee", "Bakery", "BBQ", "Pizza", "Caribbean", "Italian", "Thai", "Indian", "French", "Southern", "Food Truck", "Greek", "Middle Eastern", "Fast Food", "Kosher", "Vegetarian", "Vegan"]

cuisine_array.each do |cuisine_type|
    Restaurant.where("name LIKE ?", "%#{cuisine_type}%").each do |restaurant|      
    @cuisine = Cuisine.find_or_create_by(name: cuisine_type)
    restaurant.cuisines << @cuisine if !restaurant.cuisines.include?(@cuisine)
    restaurant.save
  end
end
