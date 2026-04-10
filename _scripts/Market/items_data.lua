local M = {}

M.SEASONS = {
	WINTER = "WINTER",
	SPRING = "SPRING",
	SUMMER = "SUMMER",
	AUTUMN = "AUTUMN"
}

local function item(name, price, icon, category, energy, fresh_time, max_time, season)
	return {
		name = name, 
		price = price, 
		icon = icon, 
		category = category,
		energy = energy,
		fresh_duration = fresh_time, -- Fase 1: Qualità massima
		max_duration = max_time,     -- Fase 2: Diventa dannoso dopo questo tempo
		season = season
	}
end

M.ITEMS = {
	-- ================= FRIDGE =================

	-- Cakes
	item("Cheese Cake", 25, "cake_cheese", "fridge", 35, 3600, 7200),
	item("Chocolate Cake", 28, "cake_chocolate", "fridge", 35, 3600, 7200),

	-- Coffee / Drinks
	item("Espresso", 8, "coffee_espresso", "fridge", 10, 1800, 3600),
	item("Mocha", 12, "coffee_mocha", "fridge", 22, 1800, 3600),
	item("Dark Roast", 8, "coffee_darkroast", "fridge", 12, 1800, 3600),
	item("Medium Roast", 8, "coffee_mediumroast", "fridge", 12, 1800, 3600),
	item("Light Roast", 8, "coffee_lightroast", "fridge", 12, 1800, 3600),
	item("Green Tea", 7, "coffee_greentea", "fridge", 15, 2400, 4800),

	-- Soda
	item("Coke", 10, "soda_coke", "fridge", 15, 7200, 14400),
	item("Fanta", 10, "soda_fanta", "fridge", 15, 7200, 14400),
	item("Pepsi", 10, "soda_pepsi", "fridge", 15, 7200, 14400),
	item("Sprite", 10, "soda_sprite", "fridge", 15, 7200, 14400),

	-- Popsicles
	item("Popsicle Blue", 6, "popsicle_blue", "fridge", 8, 1200, 2400, M.SEASONS.SUMMER),
	item("Popsicle Green", 6, "popsicle_green", "fridge", 8, 1200, 2400, M.SEASONS.SUMMER),
	item("Popsicle Pink", 6, "popsicle_pink", "fridge", 8, 1200, 2400, M.SEASONS.SUMMER),
	item("Popsicle Red", 6, "popsicle_red", "fridge", 8, 1200, 2400, M.SEASONS.SUMMER),
	item("Popsicle Yellow", 6, "popsicle_yellow", "fridge", 8, 1200, 2400, M.SEASONS.SUMMER),

	-- Cut fruits
	item("Apple Slice", 6, "fruit_apple_slice", "fridge", 10, 1200, 2400),
	item("Orange Slice", 6, "fruit_orange_slice", "fridge", 10, 1200, 2400),
	item("Watermelon Slice", 8, "fruit_watermelon_slice", "fridge", 15, 900, 1800, M.SEASONS.SUMMER),
	item("Rosti", 12, "rosti", "fridge", 25, 2400, 4800),

	-- Eggs / dairy
	item("Fried Eggs", 15, "eggs_fried", "fridge", 22, 1800, 3000),
	item("Scrambled Eggs", 15, "eggs_scrambled", "fridge", 22, 1800, 3000),
	item("Soft Boiled Eggs", 12, "eggs_softboiled", "fridge", 18, 1800, 3000),

	item("Emmental Cheese", 22, "cheese_emmental", "fridge", 28, 5000, 9000),
	item("Mozzarella", 18, "cheese_mozzarella", "fridge", 25, 2000, 4000),
	item("Blue Cheese", 24, "cheese_blue", "fridge", 30, 6000, 12000),
	item("Camembert", 26, "cheese_camembert", "fridge", 32, 4000, 8000),

	-- ================= SHELF =================

	item("Roasted Chestnuts", 12, "chestnuts", "shelf", 20, 3600, 7200, M.SEASONS.WINTER),
	item("Glazed Donut", 10, "glazed_donut", "shelf", 18, 2400, 4800),
	item("Maple Syrup", 15, "maple_syrup", "shelf", 25, 20000, 40000),
	item("Pancakes", 14, "pancakes", "shelf", 28, 2400, 4800),
	item("Polenta", 12, "polenta", "shelf", 30, 5000, 10000),
	item("Peanut Butter", 30, "peanut_butter", "shelf", 45, 30000, 60000),

	-- Fruits
	item("Apple", 8, "fruit_apple", "shelf", 12, 8000, 16000, M.SEASONS.AUTUMN),
	item("Banana", 9, "fruit_banana", "shelf", 15, 3600, 7200),
	item("Blueberry", 12, "fruit_blueberry", "shelf", 14, 2400, 4800, M.SEASONS.SUMMER),
	item("Cherry", 12, "fruit_cherry", "shelf", 14, 1800, 3600, M.SEASONS.SUMMER),
	item("Red Grapes", 11, "fruit_grape_red", "shelf", 16, 3000, 6000, M.SEASONS.AUTUMN),
	item("Green Grapes", 11, "fruit_greengrape", "shelf", 16, 3000, 6000, M.SEASONS.AUTUMN),
	item("Kiwi", 10, "fruit_kiwi", "shelf", 18, 5000, 10000, M.SEASONS.WINTER),
	item("Lemon", 6, "fruit_lemon", "shelf", 5, 10000, 20000),
	item("Lime", 6, "fruit_lime", "shelf", 5, 10000, 20000),
	item("Orange", 8, "fruit_orange", "shelf", 15, 6000, 12000, M.SEASONS.WINTER),
	item("Peach", 12, "fruit_peach", "shelf", 18, 2400, 4800, M.SEASONS.SUMMER),
	item("Strawberry", 14, "fruit_strawberry", "shelf", 20, 1800, 3600, M.SEASONS.SPRING),
	item("Watermelon", 25, "fruit_watermelon", "shelf", 35, 3600, 7200, M.SEASONS.SUMMER),

	-- Vegetables
	item("Carrot", 6, "vegetable_carrot", "shelf", 10, 7000, 14000, M.SEASONS.AUTUMN),
	item("Corn", 10, "vegetable_corn", "shelf", 18, 3600, 7200, M.SEASONS.SUMMER),
	item("Cucumber", 8, "vegetable_cucumber", "shelf", 12, 3000, 6000, M.SEASONS.SUMMER),
	item("Eggplant", 10, "vegetable_eggplant", "shelf", 15, 4000, 8000, M.SEASONS.SUMMER),
	item("Garlic", 5, "vegetable_garlic", "shelf", 5, 40000, 80000),
	item("Ginger", 7, "vegetable_ginger", "shelf", 8, 30000, 60000),
	item("Jalapeno", 9, "vegetable_jalapeno", "shelf", 10, 5000, 10000),
	item("Onion", 5, "vegetable_onion", "shelf", 8, 20000, 40000),
	item("Potato", 6, "vegetable_potato", "shelf", 22, 15000, 30000),
	item("Pumpkin", 18, "vegetable_pumpkin", "shelf", 30, 10000, 20000, M.SEASONS.AUTUMN),
	item("Tomato", 9, "vegetable_tomato", "shelf", 14, 2400, 4800, M.SEASONS.SUMMER),

	item("Green Pepper", 10, "vegetable_bellpepper_green", "shelf", 15, 4000, 8000, M.SEASONS.SUMMER),
	item("Red Pepper", 10, "vegetable_bellpepper_red", "shelf", 15, 4000, 8000, M.SEASONS.SUMMER),
	item("Yellow Pepper", 10, "vegetable_bellpepper_yellow", "shelf", 15, 4000, 8000, M.SEASONS.SUMMER),

	-- Bakery / dry
	item("Baguette", 8, "pastry_baguette", "shelf", 15, 3600, 7200),
	item("Bread", 7, "pastry_bread", "shelf", 14, 4000, 8000),
	item("Brioche", 12, "pastry_brioche", "shelf", 22, 2400, 4800),
	item("Croissant", 14, "pastry_croissant", "shelf", 25, 1800, 3600),
	item("Pretzel", 11, "pastry_pretzel", "shelf", 18, 5000, 10000),
}

return M