local M = {}

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

return M