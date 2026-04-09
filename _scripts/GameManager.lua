local M = {}
local lang_en = require "_scripts.loc.en"
local lang_it = require "_scripts.loc.it"

M.current_language = "en"
M.lang_data = lang_en.strings

-- DATI DEL GIOCATORE (Valori iniziali)
M.player_id = nil        -- Verrà impostato al login
M.coins = 0             -- Coerente con api.lua
M.knowledge_amount = 0  -- Coerente con api.lua
M.hunger = 50           -- Coerente con api.lua
M.inventory = {}        -- LA NUOVA TABELLA PER GLI OGGETTI

-- Velocità quando il gioco è CHIUSO (100 punti in 24 ore)
M.hunger_rate_offline = 0.00115 

-- Velocità quando il gioco è APERTO (es. 3 volte più veloce, 100 punti in 8 ore)
M.hunger_rate_online = 0.00345

-- LIVELLO ATTUALE
M.current_level = ""

-- In GameManager.lua
M.mood = 100 -- Valore attuale da 0 a 100

-- Funzione per applicare bonus/malus
function M.add_mood(amount)
	M.mood = M.mood + amount
	-- Limitiamo tra 0 e 100
	if M.mood > 100 then M.mood = 100 end
	if M.mood < 0 then M.mood = 0 end
	print("Nuovo valore Mood: " .. M.mood)
end

-- Funzione per ottenere il moltiplicatore in base al punteggio
function M.get_mood_multiplier()
	if M.mood >= 80 then return 1.0     -- FELICE
	elseif M.mood >= 60 then return 1.2 -- NEUTRALE
	elseif M.mood >= 40 then return 1.5 -- TRISTE
	elseif M.mood >= 20 then return 2.0 -- ARRABBIATO
	else return 3.0                     -- FURIOSO
	end
end

function M.eat_food(index)
	local item = M.inventory[index]
	local now = os.time(os.date("!*t"))

	if item then
		-- Controllo se il cibo è scaduto
		local is_expired = now > item.expires_at

		if is_expired then
			-- CASO CIBO SCADUTO:
			-- Aumenta la fame (perché fa male/non nutre)
			M.hunger = math.min(100, M.hunger + 10) 
			-- Diminuisce il mood (il Yeti è triste/arrabbiato)
			M.add_mood(-15)
			print("Schifo! Cibo scaduto. Fame: " .. M.hunger .. " Mood: " .. M.mood)
		else
			-- CASO CIBO BUONO:
			-- Diminuisce la fame (valore più basso = meno fame)
			local nutrizione = item.nutrition or 20
			M.hunger = math.max(0, M.hunger - nutrizione)
			-- Aumenta il mood
			M.add_mood(10)
			print("Gnam! Cibo buono. Fame: " .. M.hunger .. " Mood: " .. M.mood)
		end

		-- Rimuovi l'oggetto mangiato in ogni caso
		table.remove(M.inventory, index)
	end
end

-- Funzione per ottenere il nome dell'animazione per l'HUD
function M.get_mood_state_name()
	if M.mood >= 80 then return "happy"
	elseif M.mood >= 60 then return "neutral"
	elseif M.mood >= 40 then return "sad"
	elseif M.mood >= 20 then return "angry"
	else return "furious"
	end
end

function M.set_current_level(new_level)
	M.current_level = new_level
end

function M.get_current_level()
	return M.current_level
end

-- --- LOCALIZZAZIONE ---

-- Funzione per caricare il file della lingua
function M.load_language(lang_id)
	M.current_language = lang_id
	if lang_id == "it" then
		M.lang_data = lang_it.strings
	elseif lang_id == "en" then
		M.lang_data = lang_en.strings
	end
	print("Lingua switchata a: " .. lang_id)
end

-- Funzione globale per ottenere una stringa tradotta
function M.get_text(key)
	if M.lang_data and M.lang_data[key] then
		return M.lang_data[key]
	end
	return key
end

return M