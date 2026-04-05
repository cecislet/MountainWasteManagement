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

function M.set_current_level(new_level)
	M.current_level = new_level
end

function M.get_current_level()
	return M.current_level
end

return M