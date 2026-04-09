local M = {}

local function item(name, price, icon, category)
	return { name = name, price = price, icon = icon, category = category }
end

M.ITEMS = {

	-- ================= FRIDGE =================

	-- Cakes
	item("Cheese Cake", 15, "cake_cheese", "fridge"),
	item("Chocolate Cake", 16, "cake_chocolate", "fridge"),

	-- Coffee / Drinks
	item("Espresso", 6, "coffee_espresso", "fridge"),
	item("Mocha", 7, "coffee_mocha", "fridge"),
	item("Dark Roast", 6, "coffee_darkroast", "fridge"),
	item("Medium Roast", 6, "coffee_mediumroast", "fridge"),
	item("Light Roast", 6, "coffee_lightroast", "fridge"),
	item("Green Tea", 5, "coffee_greentea", "fridge"),

	-- Soda
	item("Coke", 5, "soda_coke", "fridge"),
	item("Fanta", 5, "soda_fanta", "fridge"),
	item("Pepsi", 5, "soda_pepsi", "fridge"),
	item("Sprite", 5, "soda_sprite", "fridge"),

	-- Ice cream & popsicles
	item("Ice Cream (1 Scoop)", 5, "icecream_1scoop", "fridge"),
	item("Ice Cream (2 Scoops)", 7, "icecream_2scoops", "fridge"),
	item("Ice Cream (3 Scoops)", 9, "icecream_3scoops", "fridge"),

	item("Popsicle Blue", 4, "popsicle_blue", "fridge"),
	item("Popsicle Green", 4, "popsicle_green", "fridge"),
	item("Popsicle Pink", 4, "popsicle_pink", "fridge"),
	item("Popsicle Red", 4, "popsicle_red", "fridge"),
	item("Popsicle Yellow", 4, "popsicle_yellow", "fridge"),

	-- Cut fruits
	item("Apple Slice", 4, "fruit_apple_slice", "fridge"),
	item("Orange Slice", 4, "fruit_orange_slice", "fridge"),
	item("Watermelon Slice", 5, "fruit_watermelon_slice", "fridge"),

	-- Eggs / dairy
	item("Fried Eggs", 6, "eggs_fried", "fridge"),
	item("Scrambled Eggs", 6, "eggs_scrambled", "fridge"),
	item("Soft Boiled Eggs", 5, "eggs_softboiled", "fridge"),

	item("Gouda Cheese", 12, "cheese_gouda", "fridge"),
	item("Mozzarella", 11, "cheese_mozzarella", "fridge"),
	item("Blue Cheese", 13, "cheese_blue", "fridge"),
	item("Camembert", 14, "cheese_camembert", "fridge"),

	-- ================= SHELF =================

	-- Fruits
	item("Apple", 3, "fruit_apple", "shelf"),
	item("Banana", 3, "fruit_banana", "shelf"),
	item("Blueberry", 4, "fruit_blueberry", "shelf"),
	item("Cherry", 4, "fruit_cherry", "shelf"),
	item("Red Grapes", 4, "fruit_grape_red", "shelf"),
	item("Green Grapes", 4, "fruit_greengrape", "shelf"),
	item("Kiwi", 4, "fruit_kiwi", "shelf"),
	item("Lemon", 3, "fruit_lemon", "shelf"),
	item("Lime", 3, "fruit_lime", "shelf"),
	item("Orange", 3, "fruit_orange", "shelf"),
	item("Peach", 4, "fruit_peach", "shelf"),
	item("Strawberry", 4, "fruit_strawberry", "shelf"),
	item("Watermelon", 5, "fruit_watermelon", "shelf"),

	-- Vegetables
	item("Carrot", 2, "vegetable_carrot", "shelf"),
	item("Corn", 3, "vegetable_corn", "shelf"),
	item("Cucumber", 3, "vegetable_cucumber", "shelf"),
	item("Eggplant", 3, "vegetable_eggplant", "shelf"),
	item("Garlic", 2, "vegetable_garlic", "shelf"),
	item("Ginger", 2, "vegetable_ginger", "shelf"),
	item("Jalapeno", 3, "vegetable_jalapeno", "shelf"),
	item("Onion", 2, "vegetable_onion", "shelf"),
	item("Potato", 2, "vegetable_potato", "shelf"),
	item("Pumpkin", 4, "vegetable_pumpkin", "shelf"),
	item("Tomato", 3, "vegetable_tomato", "shelf"),

	item("Green Pepper", 3, "vegetable_bellpepper_green", "shelf"),
	item("Red Pepper", 3, "vegetable_bellpepper_red", "shelf"),
	item("Yellow Pepper", 3, "vegetable_bellpepper_yellow", "shelf"),

	-- Bakery / dry
	item("Baguette", 4, "pastry_baguette", "shelf"),
	item("Bread", 3, "pastry_bread", "shelf"),
	item("Brioche", 5, "pastry_brioche", "shelf"),
	item("Croissant", 6, "pastry_croissant", "shelf"),
	item("Pretzel", 5, "pastry_pretzel", "shelf"),
}

return M