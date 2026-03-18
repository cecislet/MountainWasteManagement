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
	}
}

return M