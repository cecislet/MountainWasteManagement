local M = {}

local function item(name, price, icon, category)
	return { name = name, price = price, icon = icon, category = category }
end

M.ITEMS = {

	-- ================= FRIDGE =================

	-- Cakes
	item("Cheese Cake", 15, "cake_cheese", "fridge"),
	item("Chocolate Cake", 16, "cake_chocolate", "fridge"),
	item("Matcha Cake", 17, "cake_matcha", "fridge"),
	item("Red Velvet Cake", 18, "cake_redvelvet", "fridge"),
	item("Strawberry Cake", 16, "cake_strawberry", "fridge"),

	-- Boba
	item("Boba Coffee", 11, "boba_coffee", "fridge"),
	item("Boba Mango", 11, "boba_mango", "fridge"),
	item("Boba Matcha", 11, "boba_matcha", "fridge"),
	item("Boba Milk Tea", 10, "boba_milktea", "fridge"),
	item("Boba Strawberry", 11, "boba_strawberry", "fridge"),
	item("Boba Taro", 12, "boba_taro", "fridge"),
	item("Boba Thai", 12, "boba_thai", "fridge"),

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

	-- Soymilk
	item("Soymilk Almond", 7, "soymilk_almond", "fridge"),
	item("Soymilk Banana", 7, "soymilk_banana", "fridge"),
	item("Soymilk Chocolate", 7, "soymilk_choco", "fridge"),
	item("Soymilk Choco Mint", 7, "soymilk_chocomint", "fridge"),
	item("Soymilk Coffee", 7, "soymilk_coffee", "fridge"),
	item("Soymilk Mango", 7, "soymilk_mango", "fridge"),
	item("Soymilk Matcha", 7, "soymilk_match", "fridge"),
	item("Soymilk Peach", 7, "soymilk_peach", "fridge"),
	item("Soymilk Classic", 6, "soymilk_soy", "fridge"),
	item("Soymilk Strawberry", 7, "soymilk_strawberry", "fridge"),

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
	item("Overeasy Eggs", 6, "eggs_overeasy", "fridge"),

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

	-- Onigiri
	item("Onigiri 1", 7, "onigiri_1", "shelf"),
	item("Onigiri 2", 7, "onigiri_2", "shelf"),
	item("Onigiri 3", 8, "onigiri_3", "shelf"),
	item("Onigiri 4", 8, "onigiri_4", "shelf"),
	item("Onigiri 5", 9, "onigiri_5", "shelf"),

	-- Jams
	item("Jam Blueberry", 9, "jam_blueberry", "shelf"),
	item("Jam Grape", 9, "jam_grape", "shelf"),
	item("Jam Kiwi", 9, "jam_kiwi", "shelf"),
	item("Jam Peach", 9, "jam_peach", "shelf"),
	item("Jam Strawberry", 9, "jam_strawberry", "shelf"),

	-- Misc
	item("Canned Soup", 5, "canned_soup", "shelf"),
}

return M