-- quiz_data.lua
local M = {}

M.questions = {
	{
		question = "What is the water footprint of 1 kg of beef?",
		answers = {"150000 liters", "15000 liters", "1500 liters", "150 liters"},
		correct_index = 2
	},
	{
		question = "Roughly what percentage of all food produced globally is lost or wasted?",
		answers = {"5%", "15%", "33%", "60%"},
		correct_index = 3
	},
	{
		question = "True or False: Frozen foods generally have a higher nutrient loss over time than fresh produce sitting on a shelf.",
		answers = {"True", "False"},
		correct_index = 2 
	},
	{
		question = "Which of these is the most effective way to reduce food waste at home?",
		answers = {"Buying in bulk", "Meal planning and shopping lists", "Storing all produce in the sun", "Throwing away food on the 'sell by' date"},
		correct_index = 2
	},
	{
		question = "What is the difference between 'Use By' and 'Best Before' dates?",
		answers = {"They mean the same thing", "'Use By' is about safety; 'Best Before' is about quality", "'Best Before' is about safety; 'Use By' is about quality", "Both are suggestions and can be ignored"},
		correct_index = 2
	},
	{
		question = "Which gas is produced when food rots in a landfill, contributing significantly to climate change?",
		answers = {"Oxygen", "Nitrogen", "Methane", "Helium"},
		correct_index = 3
	},
	{
		question = "True or False: Most food waste in high-income countries occurs at the retail and consumer level.",
		answers = {"True", "False"},
		correct_index = 1
	},
	{
		question = "What is 'Upcycling' in the context of food?",
		answers = {"Throwing food away", "Growing your own vegetables", "Creating new products from food scraps or byproducts", "Using a bicycle to deliver groceries"},
		correct_index = 3
	},
	{
		question = "Where is the best place to store onions to make them last longer?",
		answers = {"In a plastic bag with potatoes", "In a cool, dry, dark place", "In the freezer while raw", "On a sunny windowsill"},
		correct_index = 2
	},
	{
		question = "Which part of the 'Food Waste Hierarchy' is the most preferred option?",
		answers = {"Composting", "Feeding animals", "Source reduction (preventing waste)", "Landfill disposal"},
		correct_index = 3
	},
	{
		question = "True or False: Bruised or 'ugly' produce is usually just as nutritious as perfect-looking produce.",
		answers = {"True", "False"},
		correct_index = 1
	}
}

return M