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
		correct_index = 2 -- The answer is False; freezing often preserves nutrients.
	}
}

return M