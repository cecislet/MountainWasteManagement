local M = {}

-- CARICAMENTO MODULI ESTERNI
local lang_en = require "_scripts.loc.en"
local lang_it = require "_scripts.loc.it"
M.items_data = require "_scripts.Market.items_data" -- Assicurati che il percorso sia corretto

M.current_language = "en"
M.lang_data = lang_en.strings

-- DATI DEL GIOCATORE
M.player_id = nil
M.coins = 0
M.knowledge_amount = 0
M.hunger = 50
M.inventory = {} 
M.mood = 100 

-- COSTANTI FAME
M.hunger_rate_offline = 0.00115 
M.hunger_rate_online = 0.00345

M.current_level = ""

-- --- LOGICA MOOD ---

function M.add_mood(amount)
	M.mood = math.max(0, math.min(100, M.mood + amount))
	print("Nuovo valore Mood: " .. M.mood)
end

function M.get_mood_multiplier()
	if M.mood >= 80 then return 1.0     -- FELICE
	elseif M.mood >= 60 then return 1.2 -- NEUTRALE
	elseif M.mood >= 40 then return 1.5 -- TRISTE
	elseif M.mood >= 20 then return 2.0 -- ARRABBIATO
	else return 3.0                     -- FURIOSO
	end
end

function M.get_mood_state_name()
	if M.mood >= 80 then return "happy"
	elseif M.mood >= 60 then return "neutral"
	elseif M.mood >= 40 then return "sad"
	elseif M.mood >= 20 then return "angry"
	else return "furious"
	end
end

-- --- LOGICA CIBO E STAGIONALITÀ ---

-- Funzione di supporto per trovare i dati base di un item tramite ID
function M.get_item_data_by_id(item_id)
	for _, item in ipairs(M.items_data.ITEMS) do
		if item.icon == item_id or item.id == item_id then
			return item
		end
	end
	return nil
end

function M.get_current_season()
	local month = os.date("*t").month

	-- Definiamo i mesi per ogni stagione
	local seasons_months = {
		WINTER = {12, 1, 2},
		SPRING = {3, 4, 5},
		SUMMER = {6, 7, 8},
		AUTUMN = {9, 10, 11}
	}

	for season_name, months in pairs(seasons_months) do
		for _, m in ipairs(months) do
			if m == month then 
				return season_name 
			end
		end
	end

	return "UNKNOWN"
end

function M.eat_food(index)
	local item = M.inventory[index]
	if not item then return end

	local now = os.time()
	local original_data = M.get_item_data_by_id(item.id)

	if not original_data then 
		table.remove(M.inventory, index)
		return 
	end

	local energy_gain = original_data.energy or 10
	local current_season = M.get_current_season()
	local time_passed = now - (item.purchased_at or now)

	-- 1. Bonus Stagionalità (sottrae più fame)
	if original_data.season and original_data.season == current_season then
		energy_gain = energy_gain * 1.2
	end

	-- 2. Logica a 3 Fasi con impatto sul MOOD
	if time_passed <= original_data.fresh_duration then
		-- FASE 1: FRESCO
		M.hunger = M.hunger - energy_gain 
		M.add_mood(5) -- Mangiare cibo fresco rende felici (+5)
		print("Ottimo! Il Mood sale.")

	elseif time_passed <= original_data.max_duration then
		-- FASE 2: BEST BEFORE
		M.hunger = M.hunger - math.floor(energy_gain * 0.5)
		M.add_mood(-2) -- Non è il massimo, il mood scende un pochino (-2)
		print("Accettabile, ma lo Yeti non è entusiasta.")

	else
		-- FASE 3: SCADUTO
		M.hunger = M.hunger + 15 -- La fame sale (sta male)
		M.add_mood(-20) -- SCHIFO! Il mood crolla drasticamente (-20)
		print("Che schifo! Lo Yeti è furioso per il cibo avariato!")
	end

	-- Limiti di sicurezza
	M.hunger = math.max(0, math.min(100, M.hunger))

	table.remove(M.inventory, index)
end

-- --- LIVELLI E LOCALIZZAZIONE ---

function M.set_current_level(new_level)
	M.current_level = new_level
end

function M.get_current_level()
	return M.current_level
end

function M.load_language(lang_id)
	M.current_language = lang_id
	if lang_id == "it" then
		M.lang_data = lang_it.strings
	elseif lang_id == "en" then
		M.lang_data = lang_en.strings
	end
end

function M.get_text(key)
	if M.lang_data and M.lang_data[key] then
		return M.lang_data[key]
	end
	return key
end

return M