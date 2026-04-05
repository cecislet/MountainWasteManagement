local M = {}

M.ITEMS = {
	{ 
		id = "milk_001", 
		name = "Latte", 
		category = "fridge", 
		icon = "milk", 
		price = 10, 
		duration = 600 -- Scade in 10 minuti
	},
	{ 
		id = "bread_001", 
		name = "Pane", 
		category = "shelf", 
		icon = "bread", 
		price = 5, 
		duration = 86400 -- Scade in 24 ore
	}
}

return M