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
		fresh_duration = fresh_time,
		max_duration = max_time,
		season = season
	}
end

M.ITEMS = {
	-- ================= FRIDGE =================

	-- Cakes
	item("Cheese Cake", 10, "cake_cheese", "fridge", 35, 3600, 7200),
	item("Chocolate Cake", 12, "cake_chocolate", "fridge", 35, 3600, 7200),

	-- Coffee / Drinks
	item("Espresso", 2, "coffee_espresso", "fridge", 10, 1800, 3600),
	item("Mocha", 4, "coffee_mocha", "fridge", 22, 1800, 3600),
	item("Dark Roast", 3, "coffee_darkroast", "fridge", 12, 1800, 3600),
	item("Medium Roast", 3, "coffee_mediumroast", "fridge", 12, 1800, 3600),
	item("Light Roast", 3, "coffee_lightroast", "fridge", 12, 1800, 3600),
	item("Green Tea", 2, "coffee_greentea", "fridge", 15, 2400, 4800),

	-- Soda
	item("Coke", 3, "soda_coke", "fridge", 15, 7200, 14400),
	item("Fanta", 3, "soda_fanta", "fridge", 15, 7200, 14400),
	item("Pepsi", 3, "soda_pepsi", "fridge", 15, 7200, 14400),
	item("Sprite", 3, "soda_sprite", "fridge", 15, 7200, 14400),

	-- Popsicles
	item("Popsicle Blue", 1, "popsicle_blue", "fridge", 8, 1200, 2400, M.SEASONS.SUMMER),
	item("Popsicle Green", 1, "popsicle_green", "fridge", 8, 1200, 2400, M.SEASONS.SUMMER),
	item("Popsicle Pink", 1, "popsicle_pink", "fridge", 8, 1200, 2400, M.SEASONS.SUMMER),
	item("Popsicle Red", 1, "popsicle_red", "fridge", 8, 1200, 2400, M.SEASONS.SUMMER),
	item("Popsicle Yellow", 1, "popsicle_yellow", "fridge", 8, 1200, 2400, M.SEASONS.SUMMER),

	-- Cut fruits
	item("Apple Slice", 1, "fruit_apple_slice", "fridge", 10, 1200, 2400),
	item("Orange Slice", 1, "fruit_orange_slice", "fridge", 10, 1200, 2400),
	item("Watermelon Slice", 2, "fruit_watermelon_slice", "fridge", 15, 900, 1800, M.SEASONS.SUMMER),
	item("Rosti", 4, "rosti", "fridge", 25, 2400, 4800),

	-- Eggs / dairy
	item("Fried Eggs", 5, "eggs_fried", "fridge", 22, 1800, 3000),
	item("Scrambled Eggs", 5, "eggs_scrambled", "fridge", 22, 1800, 3000),
	item("Soft Boiled Eggs", 4, "eggs_softboiled", "fridge", 18, 1800, 3000),

	item("Emmental Cheese", 7, "cheese_emmental", "fridge", 28, 5000, 9000),
	item("Mozzarella", 6, "cheese_mozzarella", "fridge", 25, 2000, 4000),
	item("Blue Cheese", 8, "cheese_blue", "fridge", 30, 6000, 12000),
	item("Camembert", 9, "cheese_camembert", "fridge", 32, 4000, 8000),

	-- ================= SHELF =================

	item("Roasted Chestnuts", 4, "chestnuts", "shelf", 20, 3600, 7200, M.SEASONS.WINTER),
	item("Glazed Donut", 3, "glazed_donut", "shelf", 18, 2400, 4800),
	item("Maple Syrup", 8, "maple_syrup", "shelf", 25, 20000, 40000),
	item("Pancakes", 5, "pancakes", "shelf", 28, 2400, 4800),
	item("Polenta", 4, "polenta", "shelf", 30, 5000, 10000),
	item("Peanut Butter", 10, "peanut_butter", "shelf", 45, 30000, 60000),

	-- Fruits
	item("Apple", 2, "fruit_apple", "shelf", 12, 8000, 16000, M.SEASONS.AUTUMN),
	item("Banana", 2, "fruit_banana", "shelf", 15, 3600, 7200),
	item("Blueberry", 4, "fruit_blueberry", "shelf", 14, 2400, 4800, M.SEASONS.SUMMER),
	item("Cherry", 4, "fruit_cherry", "shelf", 14, 1800, 3600, M.SEASONS.SUMMER),
	item("Red Grapes", 3, "fruit_grape_red", "shelf", 16, 3000, 6000, M.SEASONS.AUTUMN),
	item("Green Grapes", 3, "fruit_greengrape", "shelf", 16, 3000, 6000, M.SEASONS.AUTUMN),
	item("Kiwi", 3, "fruit_kiwi", "shelf", 18, 5000, 10000, M.SEASONS.WINTER),
	item("Lemon", 1, "fruit_lemon", "shelf", 5, 10000, 20000),
	item("Lime", 1, "fruit_lime", "shelf", 5, 10000, 20000),
	item("Orange", 2, "fruit_orange", "shelf", 15, 6000, 12000, M.SEASONS.WINTER),
	item("Peach", 4, "fruit_peach", "shelf", 18, 2400, 4800, M.SEASONS.SUMMER),
	item("Strawberry", 4, "fruit_strawberry", "shelf", 20, 1800, 3600, M.SEASONS.SPRING),
	item("Watermelon", 8, "fruit_watermelon", "shelf", 35, 3600, 7200, M.SEASONS.SUMMER),

	-- Vegetables
	item("Carrot", 1, "vegetable_carrot", "shelf", 10, 7000, 14000, M.SEASONS.AUTUMN),
	item("Corn", 3, "vegetable_corn", "shelf", 18, 3600, 7200, M.SEASONS.SUMMER),
	item("Cucumber", 2, "vegetable_cucumber", "shelf", 12, 3000, 6000, M.SEASONS.SUMMER),
	item("Eggplant", 3, "vegetable_eggplant", "shelf", 15, 4000, 8000, M.SEASONS.SUMMER),
	item("Garlic", 1, "vegetable_garlic", "shelf", 5, 40000, 80000),
	item("Ginger", 1, "vegetable_ginger", "shelf", 8, 30000, 60000),
	item("Jalapeno", 2, "vegetable_jalapeno", "shelf", 10, 5000, 10000),
	item("Onion", 1, "vegetable_onion", "shelf", 8, 20000, 40000),
	item("Potato", 1, "vegetable_potato", "shelf", 22, 15000, 30000),
	item("Pumpkin", 5, "vegetable_pumpkin", "shelf", 30, 10000, 20000, M.SEASONS.AUTUMN),
	item("Tomato", 2, "vegetable_tomato", "shelf", 14, 2400, 4800, M.SEASONS.SUMMER),
	item("Green Pepper", 3, "vegetable_bellpepper_green", "shelf", 15, 4000, 8000, M.SEASONS.SUMMER),
	item("Red Pepper", 3, "vegetable_bellpepper_red", "shelf", 15, 4000, 8000, M.SEASONS.SUMMER),
	item("Yellow Pepper", 3, "vegetable_bellpepper_yellow", "shelf", 15, 4000, 8000, M.SEASONS.SUMMER),

	-- Bakery / dry
	item("Baguette", 2, "pastry_baguette", "shelf", 15, 3600, 7200),
	item("Bread", 2, "pastry_bread", "shelf", 14, 4000, 8000),
	item("Brioche", 4, "pastry_brioche", "shelf", 22, 2400, 4800),
	item("Croissant", 5, "pastry_croissant", "shelf", 25, 1800, 3600),
	item("Pretzel", 3, "pastry_pretzel", "shelf", 18, 5000, 10000),
}

return M