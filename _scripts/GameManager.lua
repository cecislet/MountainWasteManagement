local M = {}

-- DATI DEL GIOCATORE (Valori iniziali)
M.player_id = nil        -- Verrà impostato al login
M.coins = 0             -- Coerente con api.lua
M.knowledge_amount = 0  -- Coerente con api.lua
M.hunger = 50           -- Coerente con api.lua
M.inventory = {}        -- LA NUOVA TABELLA PER GLI OGGETTI

-- LIVELLO ATTUALE
M.current_level = ""

function M.set_current_level(new_level)
	M.current_level = new_level
end

function M.get_current_level()
	return M.current_level
end

return M