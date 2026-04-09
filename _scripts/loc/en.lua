local M = {}

M.strings = {
	play = "PLAY",
	credits = "CREDITS",
	exit = "EXIT",
	label_username = "Username:",
	label_password = "Password:",
	insert_user = "Insert Username",
	insert_pass = "Insert Password",
	login = "LOGIN",
	register = "REGISTER",
	back = "BACK",
	debug_access = "DEBUG ACCESS",
	close = "CLOSE",
	school_guide = [[
	WELCOME TO THE SCHOOL!

	Get ready to sharpen your mind and become a sustainability champion!

	Earn Knowledge Points: Ace our Multiple Choice and True/False quizzes to grow your wisdom and boost your score.
	Support Your Companion: Use your Knowledge Points to provide nutritious meals and special rewards for your Yeti.
	Master the Real World: Turn your quiz success into real-life impact! Learn the secrets of food science and help eliminate waste.

	Study hard, play smart, and let's make a difference!
	]],
	quiz_finished = "Quiz Finished! Saving...",
	saving = "Saving in progress...",

	-- QUESTIONS
	q1 = "What is the water footprint of 1 kg of beef?",
	q1_a1 = "150000 liters", q1_a2 = "15000 liters", q1_a3 = "1500 liters", q1_a4 = "150 liters",

	q2 = "Roughly what percentage of all food produced globally is lost or wasted?",
	q2_a1 = "5%", q2_a2 = "15%", q2_a3 = "33%", q2_a4 = "60%",

	q3 = "True or False: Frozen foods generally have a higher nutrient loss over time than fresh produce sitting on a shelf.",
	q3_a1 = "True", q3_a2 = "False",

	q4 = "Which of these is the most effective way to reduce food waste at home?",
	q4_a1 = "Buying in bulk", q4_a2 = "Meal planning and shopping lists", q4_a3 = "Storing all produce in the sun", q4_a4 = "Throwing away food on the 'sell by' date",

	q5 = "What is the difference between 'Use By' and 'Best Before' dates?",
	q5_a1 = "They mean the same thing", q5_a2 = "'Use By' is about safety; 'Best Before' is about quality", q5_a3 = "'Best Before' is about safety; 'Use By' is about quality", q5_a4 = "Both are suggestions and can be ignored",

	q6 = "Which gas is produced when food rots in a landfill, contributing significantly to climate change?",
	q6_a1 = "Oxygen", q6_a2 = "Nitrogen", q6_a3 = "Methane", q6_a4 = "Helium",

	q7 = "True or False: Most food waste in high-income countries occurs at the retail and consumer level.",
	q7_a1 = "True", q7_a2 = "False",

	q8 = "What is 'Upcycling' in the context of food?",
	q8_a1 = "Throwing food away", q8_a2 = "Growing your own vegetables", q8_a3 = "Creating new products from food scraps or byproducts", q8_a4 = "Using a bicycle to deliver groceries",

	q9 = "Where is the best place to store onions to make them last longer?",
	q9_a1 = "In a plastic bag with potatoes", q9_a2 = "In a cool, dry, dark place", q9_a3 = "In the freezer while raw", q9_a4 = "On a sunny windowsill",

	q10 = "Which part of the 'Food Waste Hierarchy' is the most preferred option?",
	q10_a1 = "Composting", q10_a2 = "Feeding animals", q10_a3 = "Source reduction (preventing waste)", q10_a4 = "Landfill disposal",

	q11 = "True or False: Bruised or 'ugly' produce is usually just as nutritious as perfect-looking produce.",
	q11_a1 = "True", q11_a2 = "False",

	market_guide = [[
	WELCOME TO THE GENERAL STORE!

	Welcome to the General Store! Ensure your Yeti stays healthy and happy by keeping your supplies stocked.

	Fuel Your Friend: Purchase essential food and treats specifically for your Yeti here.
	Currency: All items are priced in Knowledge Points. Use your wisdom to provide!
	Seasonal Pricing: Keep an eye on the calendar! Prices fluctuate based on the current season.
	Real-World Skills: Proper Storage: Learn the best ways to store food in real life to maximize freshness (Fridge vs. Shelf).
	]],
	inventory_full = "INVENTORY FULL! Eat something first.",
	buy_btn = "BUY",
	close_btn = "CLOSE",
	no_description = "No description available.",
	next_btn = "NEXT",
	prev_btn = "PREVIOUS",

	-- ================= FRIDGE =================
	cake_cheese = "Cheese Cake",
	cake_cheese_desc = "Creamy dessert, a true American classic.",
	cake_chocolate = "Chocolate Cake",
	cake_chocolate_desc = "A rich slice of cocoa goodness.",

	coffee_espresso = "Espresso",
	coffee_espresso_desc = "The Italian king of coffee: short and strong.",
	coffee_mocha = "Mocha",
	coffee_mocha_desc = "A chocolatey coffee treat.",
	coffee_darkroast = "Dark Roast",
	coffee_darkroast_desc = "Bold coffee with an intense flavor.",
	coffee_mediumroast = "Medium Roast",
	coffee_mediumroast_desc = "Balanced coffee for any time of day.",
	coffee_lightroast = "Light Roast",
	coffee_lightroast_desc = "Bright and fruity coffee notes.",
	coffee_greentea = "Green Tea",
	coffee_greentea_desc = "Healthy and refreshing antioxidant tea.",

	soda_coke = "Coke",
	soda_coke_desc = "The most famous American fizzy drink.",
	soda_fanta = "Orange Soda",
	soda_fanta_desc = "Sweet orange flavored fizzy drink.",
	soda_pepsi = "Pepsi",
	soda_pepsi_desc = "A refreshing classic cola alternative.",
	soda_sprite = "Sprite",
	soda_sprite_desc = "Crisp lemon-lime flavored soda.",

	popsicle_blue = "Blue Popsicle",
	popsicle_green = "Green Popsicle",
	popsicle_pink = "Pink Popsicle",
	popsicle_red = "Red Popsicle",
	popsicle_yellow = "Yellow Popsicle",
	popsicle_desc = "A frozen treat to chill the Yeti!",

	fruit_apple_slice = "Apple Slice",
	fruit_apple_slice_desc = "Freshly cut and ready to eat.",
	fruit_orange_slice = "Orange Slice",
	fruit_orange_slice_desc = "A quick dose of vitamin C.",
	fruit_watermelon_slice = "Watermelon Slice",
	fruit_watermelon_slice_desc = "The ultimate summer refresher.",
	rosti = "Rösti",
	rosti_desc = "Swiss potato specialty, golden and crispy.",

	eggs_fried = "Fried Eggs",
	eggs_fried_desc = "Classic American protein breakfast.",
	eggs_scrambled = "Scrambled Eggs",
	eggs_scrambled_desc = "Soft and tasty, best with bacon.",
	eggs_softboiled = "Soft Boiled Egg",
	eggs_softboiled_desc = "Boiled egg with a runny yolk.",

	cheese_emmental = "Swiss Cheese",
	cheese_emmental_desc = "The classic Swiss cheese with holes.",
	cheese_mozzarella = "Mozzarella",
	cheese_mozzarella_desc = "Fresh Italian milky cheese.",
	cheese_blue = "Blue Cheese",
	cheese_blue_desc = "Strong flavored marbled cheese.",
	cheese_camembert = "Camembert",
	cheese_camembert_desc = "Soft-ripened cheese with a bloomy rind.",

	-- ================= SHELF =================
	chestnuts = "Roasted Chestnuts",
	chestnuts_desc = "Fire-roasted nuts, a winter valley tradition.",
	glazed_donut = "Glazed Donut",
	glazed_donut_desc = "A sweet ring-shaped American treat.",
	maple_syrup = "Maple Syrup",
	maple_syrup_desc = "Sweet syrup, perfect for pancakes.",
	pancakes = "Pancakes",
	pancakes_desc = "Fluffy American breakfast cakes.",
	polenta = "Polenta",
	polenta_desc = "Traditional Swiss-Italian cornmeal.",
	peanut_butter = "Peanut Butter",
	peanut_butter_desc = "Creamy and protein-packed. Best enjoyed during a crossover episode.",

	-- FRUIT
	fruit_apple = "Apple",
	fruit_apple_desc = "Crunchy and juicy, great for keeping the doctor away!",
	fruit_banana = "Banana",
	fruit_banana_desc = "Rich in potassium and perfect for an energy boost.",
	fruit_blueberry = "Blueberry",
	fruit_blueberry_desc = "Tiny forest fruits packed with antioxidants.",
	fruit_cherry = "Cherry",
	fruit_cherry_desc = "You can't have just one! Sweet and ruby red.",
	fruit_grape_red = "Red Grapes",
	fruit_grape_red_desc = "Sweet clusters ready to be picked and eaten.",
	fruit_greengrape = "Green Grapes",
	fruit_greengrape_desc = "Fresh and sugary, the ideal summer snack.",
	fruit_kiwi = "Kiwi",
	fruit_kiwi_desc = "Full of Vitamin C with a bright green heart.",
	fruit_lemon = "Lemon",
	fruit_lemon_desc = "Sour and fragrant, perfect for a touch of freshness.",
	fruit_lime = "Lime",
	fruit_lime_desc = "The exotic cousin of the lemon, great for refreshing drinks.",
	fruit_orange = "Orange",
	fruit_orange_desc = "A squeeze of health for your immune system.",
	fruit_peach = "Peach",
	fruit_peach_desc = "Velvety on the outside and very sweet on the inside.",
	fruit_strawberry = "Strawberry",
	fruit_strawberry_desc = "The taste of spring in a small red fruit.",
	fruit_watermelon = "Watermelon",
	fruit_watermelon_desc = "Giant, sweet, and hydrating—the queen of summer.",

	-- VEGETABLES
	vegetable_carrot = "Carrot",
	vegetable_carrot_desc = "Good for your eyesight and great for snacking.",
	vegetable_corn = "Corn",
	vegetable_corn_desc = "Sweet golden kernels, perfect in salads or on the cob.",
	vegetable_cucumber = "Cucumber",
	vegetable_cucumber_desc = "Made almost entirely of water, fresh and light.",
	vegetable_eggplant = "Eggplant",
	vegetable_eggplant_desc = "Versatile in the kitchen, great grilled or baked.",
	vegetable_garlic = "Garlic",
	vegetable_garlic_desc = "A powerful aroma that is essential for cooking.",
	vegetable_ginger = "Ginger",
	vegetable_ginger_desc = "A spicy root with a unique and healthy flavor.",
	vegetable_jalapeno = "Jalapeño",
	vegetable_jalapeno_desc = "A Mexican pepper for those who love bold flavors.",
	vegetable_onion = "Onion",
	vegetable_onion_desc = "The base of every good meal, adds flavor to everything.",
	vegetable_potato = "Potato",
	vegetable_potato_desc = "The world's favorite ingredient, in every possible form.",
	vegetable_pumpkin = "Pumpkin",
	vegetable_pumpkin_desc = "Sweet and starchy, perfect for autumn soups.",
	vegetable_tomato = "Tomato",
	vegetable_tomato_desc = "Red, juicy, and fundamental for a good pizza.",
	vegetable_bellpepper_green = "Green Pepper",
	vegetable_bellpepper_green_desc = "Crunchy with a slightly bitter taste.",
	vegetable_bellpepper_red = "Red Pepper",
	vegetable_bellpepper_red_desc = "The sweetest and most colorful of the pepper family.",
	vegetable_bellpepper_yellow = "Yellow Pepper",
	vegetable_bellpepper_yellow_desc = "Fleshy and very sweet, great raw or cooked.",

	-- LAST 5 ITEMS
	pastry_baguette = "Baguette",
	pastry_baguette_desc = "The classic French bread, long and with a crunchy crust.",
	pastry_bread = "Bread",
	pastry_bread_desc = "The ultimate staple food, fragrant and genuine.",
	pastry_brioche = "Brioche",
	pastry_brioche_desc = "A soft sweet bun, perfect for fillings.",
	pastry_croissant = "Croissant",
	pastry_croissant_desc = "Buttery and flaky pastry for a perfect breakfast.",
	pastry_pretzel = "Pretzel",
	pastry_pretzel_desc = "Traditional knotted bread topped with salt crystals.",
}

return M