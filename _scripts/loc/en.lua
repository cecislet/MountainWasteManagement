local M = {} -- <--- QUESTA RIGA CREA LA TABELLA (Mancava!)

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
}

return M 