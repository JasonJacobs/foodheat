BK_ZIPS = ["11201", "11202", "11203", "11204", "11205", "11206", "11207", "11208", "11209", "11210", "11211", "11212", "11213", "11214", "11215", "11216", "11217", "11218", "11219", "11220", "11221", "11222", "11223", "11224", "11225", "11226", "11228", "11229", "11230", "11231", "11232", "11233", "11234", "11235", "11236", "11237", "11238", "11239", "11240", "11241", "11242", "11243", "11244", "11245", "11247", "11248", "11249", "11251", "11252", "11254", "11255", "11256"]

# QUEENS_ZIPS =["11421","11422","11423","11424","11425","11426","11427","11428","11429","11430","11431","11432","11433","11434","11435","11436","11439","11451","11499","11690","11691","11692","11693","11694","11695","11697","11004","11005","11101","11102","11103","11104","11105","11106","11109","11120","11351","11352","11354","11355","11356","11357","11358","11359","11360","11361","11362","11363","11364","11365","11366","11367","11368","11369","11370","11371","11372", "11373","11374","11375","11377","11378","11379","11380","11381","11385","11386","11390","11405","11411","11412","11413","11414","11415","11416","11417","11418","11419","11420"]

cuisine_list = ["Afghan Restaurant", "African Restaurant", "American Restaurant", "Arepa Restaurant", "Argentinian Restaurant", "Asian Restaurant", "Australian Restaurant", "Austrian Restaurant", "BBQ Joint", "Bagel Shop", "Bakery", "Belgian Restaurant", "Bistro", "Brazilian Restaurant", "Breakfast Spot", "Bubble Tea Shop", "Buffet", "Burger Joint", "Burrito Place", "Cafeteria", "Cafe", "Cajun Restaurant", "Creole Restaurant", "Cambodian Restaurant", "Caribbean Restaurant", "Chinese Restaurant", "Coffee Shop", "Comfort Food Restaurant", "Creperie", "Cuban Restaurant", "Cupcake Shop", "Czech Restaurant", "Deli", "Bodega", "Dessert Shop", "Dim Sum Restaurant", "Diner", "Distillery", "Donut Shop", "Dumpling Restaurant", "Eastern European Restaurant", "English Restaurant", "Ethiopian Restaurant", "Falafel Restaurant", "Fast Food Restaurant", "Filipino Restaurant", "Fish & Chips Shop", "Fondue Restaurant", "Food Truck", "French Restaurant", "Fried Chicken Joint", "Gastropub", "German Restaurant", "Gluten-free Restaurant", "Greek Restaurant", "Halal Restaurant", "Hawaiian Restaurant", "Himalayan Restaurant", "Hot Dog Joint", "Hotpot Restaurant", "Hungarian Restaurant", "Ice Cream Shop", "Indian Restaurant", "Indonesian Restaurant", "Irish Pub", "Italian Restaurant", "Japanese Restaurant", "Jewish Restaurant", "Juice Bar", "Korean Restaurant", "Kosher Restaurant", "Latin American Restaurant", "Mac & Cheese Joint", "Malaysian Restaurant", "Mediterranean Restaurant", "Mexican Restaurant", "Middle Eastern Restaurant", "Modern European Restaurant", "Molecular Gastronomy Restaurant", "Mongolian Restaurant", "Moroccan Restaurant", "New American Restaurant", "Pakistani Restaurant", "Persian Restaurant", "Peruvian Restaurant", "Pie Shop", "Pizza Place", "Polish Restaurant", "Portuguese Restaurant", "Ramen", "Noodle House", "Restaurant", "Romanian Restaurant", "Russian Restaurant", "Salad Place", "Sandwich Place", "Scandinavian Restaurant", "Seafood Restaurant", "Snack Place", "Soup Place", "South American Restaurant", "Southern Restaurant", "Soul Food Restaurant", "Souvlaki Shop", "Spanish Restaurant", "Sri Lankan Restaurant", "Steakhouse", "Sushi Restaurant", "Swiss Restaurant", "Taco Place", "Tapas Restaurant", "Tea Room", "Thai Restaurant", "Tibetan Restaurant", "Turkish Restaurant", "Kebab Restaurant", "Ukrainian Restaurant", "Vegetarian Restaurant", "Vegan Restaurant", "Vietnamese Restaurant", "Winery", "Wings Joint", "Frozen Yogurt"]

# BRONX_ZIPS = ["10451", "10452", "10453", "10454", "10455", "10456", "10457", "10458", "10459", "10460", "10461", "10462", "10463", "10464", "10465", "10466", "10467", "10468", "10469", "10470", "10471", "10472", "10473", "10474", "10475", "10499"]

# QUEENS_ZIPS.each do |zip|
#   cuisine_list.each do |cuisine|
#     Scrape.new(zip, cuisine).call
#   end
# end

BK_ZIPS.each do |zip|
  cuisine_list.each do |cuisine|
    Scrape.new(zip, cuisine).call
  end
end

# BRONX_ZIPS.each do |zip|
#   cuisine_list.each do |cuisine|
#     Scrape.new(zip, cuisine).call
#   end
# end



# Scrape.new(11238, "Italian Restaurant").call


cuisine_array = ["Japanese", "Chinese", "Mexican", "Coffee", "Bakery", "BBQ", "Pizza", "Caribbean", "Italian", "Thai", "Indian", "French", "Southern", "Food Truck", "Greek", "Middle Eastern", "Fast Food", "Kosher", "Vegetarian", "Vegan", "Russian", "Polish", "African", "Filipino", "Korean"]

cuisine_array.each do |cuisine_type|
    Restaurant.where("name LIKE ?", "%#{cuisine_type}%").each do |restaurant|     
    @cuisine = Cuisine.find_or_create_by(name: cuisine_type)
    restaurant.cuisines << @cuisine if !restaurant.cuisines.include?(@cuisine)
    restaurant.save
  end
end

facts = {
  "American" => ["The first diner was created in 1872, by a man named Walter Scott. He decided to sell food out of a horse-pulled wagon to employees of the Providence Journal, in Providence, Rhode Island. Scott's diner can be considered the first diner with “walk up” windows that were located on each side of the wagon."],
  
 "BBQ" => ["Traditional barbacoa involves digging a hole in the ground and placing some meat (usually a whole goat) with a pot underneath it, so that the juices can make a hearty broth. It is then covered with maguey leaves and coal and set alight. The cooking process takes a few hours."],

  "Bakery" => ["The Cronut is a croissant-doughnut pastry invented by Chef Dominique Ansel and trademarked by his Bakery in New York City. The pastry is made by frying a laminated dough in grape seed oil. The fried pastry is then sugared, filled, and glazed."],

  "Bodega" => ["Half of NYC bodegas are at risk of closing.", "In 2011, 58% of bodegas tested by the state liqour board sold alcohol to minors.", "The average payout for a bodega owner who sells to 7-11 is $280,000."],

  "Caribbean" => ["In 2009, the United States was home to 3.5 million immigrants from the Caribbean, who accounted for 9 percent of the total foreign-born population.",
    "More than 90 percent Caribbean immigrants came from Cuba, the Dominican Republic, Jamaica, Haiti, and Trinidad and Tobago, and Cuban immigrants in particular have been among the top ten foreign-born groups in the United States each decade since 1970.",
    "While the number of Caribbean immigrants in the United States continues to increase, the population's rate of growth has slowed a bit more each decade since 1970, and the share of the foreign born that is from the Caribbean has gradually declined since 1990.",
    "Compared to other immigrant groups, the foreign born from the Caribbean are less likely to be new arrivals, tend to have higher levels of English-language proficiency, and become naturalized U.S. citizens at higher rates.",
    "Caribbean immigrants are more likely to be older than other immigrant groups and Caribbean men have lower rates of civilian labor force participation."],

  "Chinese" => [
    "The New York City Metropolitan Area contains the largest ethnic Chinese population outside Asia.", 
    "There was an estimated 735,019 Chinese descents as of 2012, including at least 9 Chinatowns, comprising the original Manhattan Chinatown, three in Queens, three in Brooklyn, and one each in Edison, New Jersey and Nassau County, Long Island, not to mention fledgling ethnic Chinese enclaves emerging throughout the New York City metropolitan area."],

  "Coffee" => ["Caffeine was once thought to be a significant diuretic, but that’s actually not true. Unless it’s consumed in large quantities (more than 500 to 600 mg a day, or two coffees) there aren’t such negative effects.", "Some chroniclers of New York's early days are confident that the first coffee house in America was opened in New York." ],

  "Food Truck" => ["Food safety code laws and regulations vary greatly depending on where the food truck is based.",
  "When Hurricane Katrina devastated New Orleans, food trucks were “invaluable” for feeding the “clean-up crews and construction workers who couldn’t leave their sites to dine out at the few reopened restaurants,” according to The Atlantic. After Hurricane Sandy, food trucks served over 100,000 meals to hungry New Yorkers, even offering 11,000 free hot lunches in just one day.",
  "In Atlanta, the homeless shelter City of Refuge runs a food truck to fund its services (the nonprofit cooks up 12,000 to 18,000 meals a month). Every meal sold at the People’s Food Truck provides enough money to feed up to three people at its shelter. The truck also provides first-hand culinary experience for those at the shelter, giving them the skills to enter the restaurant industry.",
  "A market research report by IBISWorld found that food trucks are generating over $800 million in revenue nationwide. Meanwhile, Intuit predicts that by 2017, food trucks will be doing $2.7 billion worth of business.",
  "Since it’s a lot cheaper to open a food truck than a brick-and-mortar restaurant, it means more entrepreneurs have the opportunity to experiment and whip up some really creative dishes.",
  "Even though food trucks are very popular, way too many cities are overregulating these mobile vendors. Many of these regulations don’t do anything for consumers—they exist to protect brick-and-mortar restaurants from the competition.",
  "Despite having over 8 million people, New York City only allows 3,000 street food vendors. Only 500 of those permits are issued to food trucks. Combining this cap with the enormous popularity of food trucks creates a permit shortage, with licenses fetching as much as $20,000 on the black market. That’s more expensive than what some trucks cost."
    ],

  "French" => [
    "While Americans of French descent make up a substantial percentage of the American population, French Americans arguably are less visible than other similarly sized ethnic groups.",
    "Unlike other immigrants who came to the United States of America from other countries, some French Americans arrived prior to the founding of the United States. In many parts of the country, like the Midwest and Louisiana, they were the founders of some of these villages, cities, and first state inhabitants.",
    "While found throughout the country, French Americans are most numerous in New England, northern New York, the Midwest, and Louisiana.",
    "French is the fourth most-spoken language in the country, behind English, Spanish, and Chinese.",
    "In the late 19th century, many Francophones arrived in New England from Quebec and New Brunswick to work in textile mill cities in New England. In the same period, Francophones from Quebec soon became a majority of the workers in the saw mill and logging camps in the Adirondack Mountains and their foothills. Others sought opportunities for farming and other trades such as blacksmiths in Northern New York State."
    ],

  "Greek" => [
    "Greek immigration to New York City began mainly in the 1890s.", 
    "Greek immigration to New York City took place between 1890 until around 1917.",
    "Greeks again began to arrive in large numbers after 1945, as they fled the economic devastation caused by World War II and the Greek Civil War.",
    "In the first immigration wave, most of the Greek immigrants were men.",
    "The first immigration wave brought 450,000 Greeks to the Northeast, largely concentrated in New York City.",
    "The largest concentration of Greeks can still be found in Astoria. The Greek community there was established in the early 20th century immigration."
    ],

  "Indian" => [
    "According to 2007 American Community Survey estimates, New York City is home to approximately 315,000 people from the Indian subcontinent, which includes the countries of India (236,117), Pakistan (39,002), Bangladesh (34,332), and Sri Lanka (5,010).",
    "South Asians constitute 3.8% of New York City's population.",
    "The New York City Metropolitan Area is home to approximately 600,000 Indian Americans, representing the largest Asian Indian population in the Western Hemisphere. A majority of the South Asian residents are concentrated in Queens neighborhoods such as Jackson Heights, Flushing, City Line, Ozone Park, Glen Oaks, Floral Park, Bellerose, Jamaica, Kew Gardens, and Elmhurst.",
    "In the borough of Queens, the South Asian population is approximately near 200,000 and counting, where they constitute 8.2% of the population.",
    "The New York City Metropolitan Area contains the largest Sri Lankan community in the United States (second largest in North America after Toronto, Ontario, Canada), receiving the highest legal permanent resident Sri Lankan immigrant population.",
    "The Little Sri Lanka in the Tompkinsville neighborhood of the borough of Staten Island is one of the largest Sri Lankan communities outside of the country of Sri Lanka itself."],

  "Italian" => [
    "New York City has the largest population of Italian Americans in the United States of America, many of whom inhabit ethnic enclaves in Brooklyn, the Bronx, Queens, and Staten Island.",
    "The largest wave of Italian immigration to the United States took place in the late 19th century and early 20th century.",
    "Italian families first settled in Little Italy's neighborhoods, the first and most famous one being the one around Mulberry Street, in Manhattan."],

  "Japanese" => ["As of the 2000 Census about over half of the 37,279 people of Japanese ancestry in New York State lived in New York City.", "In March 2011, Sam Dolnick and Kirk Semple of The New York Times wrote that the 'prominent outpost of Japanese culture' in New York City was a group of sake bars and sushi restaurants in the East Village neighborhood of Manhattan.", "As of 2011 there were about 20,000 Japanese in New York City and a total of 45,000 in the Greater New York City area. Many of the Japanese are from transient groups such as university students, artists, and business workers."],

  "Korean" => ["New York City is home to 100,000 ethnic Koreans, with two-thirds living in Queens.", "In the 1980s, a continuous stream of Korean immigrants also emerged into the Long Island Koreatown, many of whom began as workers in the medical field or Korean international students who had moved to New York City to find or initiate professional or entrepreneurial positions.", "In 1990, Korean-American owned shops were boycotted in the Flatbush section of Brooklyn; the boycott started by Black Nationalist, Sonny Carson, lasted for six months and became known as the Flatbush boycott."],

  "Kosher" => ["The New York metropolitan area is home to the largest Jewish population in the world outside Israel.",
    "The Orthodox community is rapidly growing due to higher birthrates among Orthodox (especially Hasidic) Jews, while the numbers of Conservative and Reform Jews are declining.",
    "The first Jewish presence in New York City dates to the arrival of 23 Jewish refugees in 1654, who fled from Recife, Brazil, after the Portuguese conquered New Holland and brought the Inquisition with them.",
    "Major immigration of Jews to New York began in the 1880s, with the increase of Anti-Semitic actions in Central and Eastern Europe. The number of Jews in New York City soared throughout the beginning of the 20th century and reached a peak of 2 million in the 1950s, when Jews constituted one-quarter of the city's population. New York City's Jewish population then began to decline because of low fertility rates and migration to suburbs and other states, particularly California and Florida.",
    "A new wave of Ashkenazi, Kavkazi, Bukharian, and Georgian Jewish immigrants from the former Soviet Union began arriving in the 1980s and 1990s. Sephardic Jews including Syrian, Moroccan and other Jews of non-European origin have also lived in New York City since the 17th century.",
    "Many Jews, including the newer immigrants, have settled in Queens, south Brooklyn, and the Bronx, where at present most live in neighborhoods such as Riverdale. Sephardic Jews estimated at 100,000 strong have settled along Ocean Parkway in Brooklyn creating a unified community consisting of about 75,000 people in this area, while the other Sephardic Jews live in the Upper East Side of Manhattan and in Staten Island.",
    "19th-century Jewish immigrants settled mainly in the tenement houses of the Lower East Side of Manhattan. New York City's current Jewish population is dispersed among all the boroughs; Brooklyn's Jewish population in 2011 was estimated as 561,000, and Manhattan's was 240,000",
    "The New York metropolitan area's Jewish population in 2001 was approximately 1.97 million, 600,000 fewer than in Israel's largest metropolitan area, denoted as Gush Dan. In 2012, an estimated 1,086,000 Ashkenazic Jews lived in New York City and constituted about 12% of the city's population, while approximately 100,000 Sephardic Jews live in the city too. New York City is also home to the world headquarters of the Hasidic Chabad-Lubavitch group and the Bobover, Pupa, Vizhnitz and Satmar branches of Hasidism, ultra-Orthodox sects of Judaism."
    ],

    "Latin American" => [
    "New York City has the largest Puerto Rican population outside of Puerto Rico.",
    "Immigration records of Dominicans in the United States date from the late 19th century, and New York City has had a Dominican community since the 1930s.",
    "In 2009, it was estimated that 211,378 Ecuadorian Americans lived in New York City, representing 8.9% of the city's Hispanic population.",
    "Colombians have come in small numbers to New York City since the 1960s.",
    "Since 1990, the Salvadoran population has been growing very rapidly in New York City. More than 50% of Salvadorans live in Queens, and the growth of their population is most notable in South Jamaica and Far Rockaway."
    ],
  "Mexican" => [
    "At the 2010 Census, there were 319,263 Mexican Americans living in New York City.", "In 2009, it was estimated that of the city's Hispanic population, 13.5% was of Mexican origin." 
    ],

  "Middle Eastern" => ["The New York metro area contains the largest concentration of populations with Arab and Middle Eastern ancestry in the U.S., with 230,899 residents of the metro area claiming Arab ancestry in the 2000 U.S. Census."],

  "Pizza" => ["The first pizzeria in America was founded by Gennaro Lombardi in Little Italy, Manhattan in 1905.", "The original pizzerias in New York used coal brick ovens and baked their pizza with the cheese on the bottom and sauce on top.", "New York style pizza gets its distinguishing crust from the high-gluten bread flour with which it is made. Minerals present in New York City water are also credited with giving the dough in metro area pies their characteristic flavor. Some out-of-state pizza makers even transport the water cross-country for the sake of authenticity."],

  "Polish" => ["As of the 2000 census, 213,447 New Yorkers reported Polish ancestry.", "The Pulaski Day Parade in New York on Fifth Avenue has been celebrated since 1937 to commemorate Kazimierz Pułaski, a Polish hero of the American Revolutionary War.", "The combined neighborhood of Greenpoint/Williamsburg is sometimes referred to as 'Little Poland' because of its large population of primarily working-class Polish immigrants, reportedly the second largest concentration in the United States, after Chicago."],

  "Russian" => ["New York City contains a very large and growing Russian-Jewish population estimated at around 300,000.", "There are large numbers of Russian-Jews in Brooklyn, mostly in neighborhoods of Southern Brooklyn, notably Brighton Beach, also known as 'Little Odessa', where there are many businesses and billboards with signage entirely in the Russian language."],

  "Southern" => ["The term soul food became popular in the 1960s after Alex Haley recorded Malcolm X’s life story in 1963. Soul food represented both Southerness and commensality. It reminded Americans from the Great Migration of home and family from before they moved into the unfamiliar urban streets of Chicago.", "Topping the list of soul food and Southern food are fried chicken, barbeque ribs, macaroni and cheese, chitterlings (hog intestines, also known as chitlins), pickled pigs feet, turnip greens, black-eyed peas, sweet potato pie, hushpuppies and cornbread, (also known as johnnycake)."],

  "Thai" => ["Pad thai was made popular in Thailand during World War II.", "In 2000, Woodside's population was 30% Asian American. Woodside has a large population of Thai Americans, Korean Americans, Chinese Americans and Filipino Americans (see Koreatown, Chinatown, and Filipinotown), each with their own respective ethnic enclave."],

  "Vegetarian" => ["Several studies show that a plant-based diet increases the body’s metabolism, causing the body to burn calories up to 16% faster than the body would on a meat-based diet for at least the first 3 hours after meals.", "Vegetarianism has roots in ancient India. In fact, currently 70% of the world’s vegetarians are Indians and there are more vegetarians in India than in any other country in the world.", "A British study revealed that a child’s IQ could help predict his or her chance for becoming a vegetarian. The higher the IQ, the more likely the child will become a vegetarian."]
 
}

facts.each do |cuisine, facts|
  facts.each do |fact|
    cuisine_object = Cuisine.find_by("name LIKE ?", "%#{cuisine}%")
    Fact.create(content: fact, cuisine_id: cuisine_object.id)
  end
end