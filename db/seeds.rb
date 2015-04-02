# BK_ZIPS = ["11201", "11202", "11203", "11204", "11205", "11206", "11207", "11208", "11209", "11210", "11211", "11212", "11213", "11214", "11215", "11216", "11217", "11218", "11219", "11220", "11221", "11222", "11223", "11224", "11225", "11226", "11228", "11229", "11230", "11231", "11232", "11233", "11234", "11235", "11236", "11237", "11238", "11239", "11240", "11241", "11242", "11243", "11244", "11245", "11247", "11248", "11249", "11251", "11252", "11254", "11255", "11256"]


# QUEENS_ZIPS =["11421","11422","11423","11424","11425","11426","11427","11428","11429","11430","11431","11432","11433","11434","11435","11436","11439","11451","11499","11690","11691","11692","11693","11694","11695","11697"]

#   # "11004","11005","11101","11102","11103","11104","11105","11106","11109","11120","11351","11352","11354","11355","11356","11357","11358","11359","11360","11361","11362","11363","11364","11365","11366","11367","11368","11369","11370","11371","11372", "11373","11374","11375","11377","11378","11379","11380","11381","11385","11386","11390","11405","11411","11412","11413","11414","11415","11416","11417","11418","11419","11420",

# cuisine_list = ["Afghan Restaurant", "African Restaurant", "American Restaurant", "Arepa Restaurant", "Argentinian Restaurant", "Asian Restaurant", "Australian Restaurant", "Austrian Restaurant", "BBQ Joint", "Bagel Shop", "Bakery", "Belgian Restaurant", "Bistro", "Brazilian Restaurant", "Breakfast Spot", "Bubble Tea Shop", "Buffet", "Burger Joint", "Burrito Place", "Cafeteria", "Cafe", "Cajun Restaurant", "Creole Restaurant", "Cambodian Restaurant", "Caribbean Restaurant", "Chinese Restaurant", "Coffee Shop", "Comfort Food Restaurant", "Creperie", "Cuban Restaurant", "Cupcake Shop", "Czech Restaurant", "Deli", "Bodega", "Dessert Shop", "Dim Sum Restaurant", "Diner", "Distillery", "Donut Shop", "Dumpling Restaurant", "Eastern European Restaurant", "English Restaurant", "Ethiopian Restaurant", "Falafel Restaurant", "Fast Food Restaurant", "Filipino Restaurant", "Fish & Chips Shop", "Fondue Restaurant", "Food Truck", "French Restaurant", "Fried Chicken Joint", "Gastropub", "German Restaurant", "Gluten-free Restaurant", "Greek Restaurant", "Halal Restaurant", "Hawaiian Restaurant", "Himalayan Restaurant", "Hot Dog Joint", "Hotpot Restaurant", "Hungarian Restaurant", "Ice Cream Shop", "Indian Restaurant", "Indonesian Restaurant", "Irish Pub", "Italian Restaurant", "Japanese Restaurant", "Jewish Restaurant", "Juice Bar", "Korean Restaurant", "Kosher Restaurant", "Latin American Restaurant", "Mac & Cheese Joint", "Malaysian Restaurant", "Mediterranean Restaurant", "Mexican Restaurant", "Middle Eastern Restaurant", "Modern European Restaurant", "Molecular Gastronomy Restaurant", "Mongolian Restaurant", "Moroccan Restaurant", "New American Restaurant", "Pakistani Restaurant", "Persian Restaurant", "Peruvian Restaurant", "Pie Shop", "Pizza Place", "Polish Restaurant", "Portuguese Restaurant", "Ramen", "Noodle House", "Restaurant", "Romanian Restaurant", "Russian Restaurant", "Salad Place", "Sandwich Place", "Scandinavian Restaurant", "Seafood Restaurant", "Snack Place", "Soup Place", "South American Restaurant", "Southern Restaurant", "Soul Food Restaurant", "Souvlaki Shop", "Spanish Restaurant", "Sri Lankan Restaurant", "Steakhouse", "Sushi Restaurant", "Swiss Restaurant", "Taco Place", "Tapas Restaurant", "Tea Room", "Thai Restaurant", "Tibetan Restaurant", "Turkish Restaurant", "Kebab Restaurant", "Ukrainian Restaurant", "Vegetarian Restaurant", "Vegan Restaurant", "Vietnamese Restaurant", "Winery", "Wings Joint", "Frozen Yogurt"]

# BRONX_ZIPS = ["10451", "10452", "10453", "10454", "10455", "10456", "10457", "10458", "10459", "10460", "10461", "10462", "10463", "10464", "10465", "10466", "10467", "10468", "10469", "10470", "10471", "10472", "10473", "10474", "10475", "10499"]

# QUEENS_ZIPS.each do |zip|
#   cuisine_list.each do |cuisine|
#     Scrape.new(zip, cuisine).call
#   end
# end

# Scrape.new(11238, "Italian Restaurant").call



# QUEENS_ZIPS.each do |zip|
#   cuisine_list.each do |cuisine|
#     Scrape.new(zip, cuisine).call
#   end
# end
# cuisine_array = ["Japanese", "Chinese", "Mexican", "Coffee", "Bakery", "BBQ", "Pizza", "Caribbean", "Italian", "Thai", "Indian", "French", "Southern", "Food Truck", "Greek", "Middle Eastern", "Fast Food", "Kosher", "Vegetarian", "Vegan", "Russian", "Polish"]

# cuisine_array.each do |cuisine_type|
#     Restaurant.where("name LIKE ?", "%#{cuisine_type}%").each do |restaurant|     
#     @cuisine = Cuisine.find_or_create_by(name: cuisine_type)
#     restaurant.cuisines << @cuisine if !restaurant.cuisines.include?(@cuisine)
#     restaurant.save
#   end
# end

# facts = {
#   "American" => ["The first diner was created in 1872, by a man named Walter Scott. He decided to sell food out of a horse-pulled wagon to employees of the Providence Journal, in Providence, Rhode Island. Scott's diner can be considered the first diner with “walk up” windows that were located on each side of the wagon."],

#   "BBQ" => ["Traditional barbacoa involves digging a hole in the ground and placing some meat (usually a whole goat) with a pot underneath it, so that the juices can make a hearty broth. It is then covered with maguey leaves and coal and set alight. The cooking process takes a few hours."],

#   "Bakery" => ["The Cronut is a croissant-doughnut pastry invented by Chef Dominique Ansel and trademarked by his Bakery in New York City. The pastry is made by frying a laminated dough in grape seed oil. The fried pastry is then sugared, filled, and glazed."],

#   "Bodega" => ["Half of NYC bodegas are at risk of closing"],

#   "Caribbean" => ["In 2009, the United States was home to 3.5 million immigrants from the Caribbean, who accounted for 9 percent of the total foreign-born population."],

#   "Chinese" => [
#     "The New York City Metropolitan Area contains the largest ethnic Chinese population outside Asia.", 
#     "There was an estimated 735,019 Chinese descents as of 2012, including at least 9 Chinatowns, comprising the original Manhattan Chinatown, three in Queens, three in Brooklyn, and one each in Edison, New Jersey and Nassau County, Long Island, not to mention fledgling ethnic Chinese enclaves emerging throughout the New York City metropolitan area.",
#     ],

#   "Coffee" => ["Caffeine was once thought to be a significant diuretic, but that’s actually not true. Unless it’s consumed in large quantities (more than 500 to 600 mg a day, or two coffees) there aren’t such negative effects."],

#   "Food Truck" => ["Food safety code laws and regulations vary greatly depending on where the food truck is based."],

#   "French" => [
#     "While Americans of French descent make up a substantial percentage of the American population, French Americans arguably are less visible than other similarly sized ethnic groups."
#     ],

#   "Greek" => [
#     "Greek immigration to New York City began mainly in the 1890s.", 
#     "Greek immigration to New York City took place between 1890 until around 1917.",
#     "Greeks again began to arrive in large numbers after 1945, as they fled the economic devastation caused by World War II and the Greek Civil War.",
#     "In the first immigration wave, most of the Greek immigrants were men.",
#     "The first immigration wave brought 450,000 Greeks to the Northeast, largely concentrated in New York City.",
#     "The largest concentration of Greeks can still be found in Astoria.  The Greek community there was established in the early 20th century immigration."
#     ],

#   "Indian" => [
#     "According to 2007 American Community Survey estimates, New York City is home to approximately 315,000 people from the Indian subcontinent, which includes the countries of India (236,117), Pakistan (39,002), Bangladesh (34,332), and Sri Lanka (5,010).",
#     "South Asians constitute 3.8% of New York City's population."
#     ],

#   "Italian" => [
#     "New York City has the largest population of Italian Americans in the United States of America, many of whom inhabit ethnic enclaves in Brooklyn, the Bronx, Queens, and Staten Island.",
#     "The largest wave of Italian immigration to the United States took place in the late 19th century and early 20th century.",
#     "Italian families first settled in Little Italy's neighborhoods, the first and most famous one being the one around Mulberry Street, in Manhattan."],

#   "Japanese" => ["As of the 2000 Census about over half of the 37,279 people of Japanese ancestry in New York State lived in New York City."],

#   "Korean" => ["New York City is home to 100,000 ethnic Koreans, with two-thirds living in Queens."],

#   "Kosher" => ["The New York metropolitan area is home to the largest Jewish population in the world outside Israel."],

#   "Latin American" => [
#     "New York City has the largest Puerto Rican population outside of Puerto Rico.",
#     "Immigration records of Dominicans in the United States date from the late 19th century, and New York City has had a Dominican community since the 1930s.",
#     "In 2009, it was estimated that 211,378 Ecuadorian Americans lived in New York City, representing 8.9% of the city's Hispanic population.",
#     "Colombians have come in small numbers to New York City since the 1960s.",
#     "Since 1990, the Salvadoran population has been growing very rapidly in New York City. More than 50% of Salvadorans live in Queens, and the growth of their population is most notable in South Jamaica and Far Rockaway."
#     ],
    
#   "Mexican" => [
#     "At the 2010 Census, there were 319,263 Mexican Americans living in New York City."
#     ],

#   "Middle Eastern" => ["The New York metro area contains the largest concentration of populations with Arab and Middle Eastern ancestry in the U.S., with 230,899 residents of the metro area claiming Arab ancestry in the 2000 U.S. Census."],

#   "Pizza" => ["The first pizzeria in America was founded by Gennaro Lombardi in Little Italy, Manhattan in 1905."],

#   "Polish" => ["As of the 2000 census, 213,447 New Yorkers reported Polish ancestry."],

#   "Russian" => ["New York City contains a very large and growing Russian-Jewish population estimated at around 300,000."],

#   "Southern" => ["The term soul food became popular in the 1960s after Alex Haley recorded Malcolm X’s life story in 1963. Soul food represented both Southerness and commensality. It reminded Americans from the Great Migration of home and family from before they moved into the unfamiliar urban streets of Chicago."],

#   "Thai" => ["Pad thai was made popular in Thailand during World War II."],

#   "Vegetarian" => ["Several studies show that a plant-based diet increases the body’s metabolism, causing the body to burn calories up to 16% faster than the body would on a meat-based diet for at least the first 3 hours after meals."]
# }

# facts.each do |cuisine, facts|
#   facts.each do |fact|
#     cuisine_object = Cuisine.find_by("name LIKE ?", "%#{cuisine}%")
#     Fact.create(content: fact, cuisine_id: cuisine_object.id)
#   end
# end