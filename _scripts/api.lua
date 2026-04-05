local M = {}

-- CONFIGURAZIONE
local PROJECT_ID = "69d189c1001e4c58e744"
local BASE_URL = "https://cloud.appwrite.io/v1"
local DATABASE_ID = "69d18a00001d8c68673f"
local COLLECTION_ID = "users"
local SUFFIX = "@game.io"

local gm = require "_scripts.GameManager"

-- Funzione interna corretta per creare il documento (POST)
local function create_user_document(self, payload, headers, callback)
	-- CORREZIONE: L'URL per il POST si ferma a /documents
	-- NON aggiungere "/" .. gm.player_id qui!
	local url = BASE_URL .. "/databases/" .. DATABASE_ID .. "/collections/" .. COLLECTION_ID .. "/documents"

	local create_payload = {
		documentId = gm.player_id, -- L'ID va solo qui dentro
		data = payload.data
	}

	http.request(url, "POST", function(self, id, response)
		if response.status == 201 then
			print("API: Profilo database creato con successo!")
		else
			-- Se vedi 401 qui, controlla i permessi su Appwrite (Settings -> Permissions)
			print("API: Errore creazione profilo: " .. response.status .. " - " .. response.response)
		end
		if callback then callback() end
	end, headers, json.encode(create_payload))
end

-- Funzione per caricare i dati (GET)
function M.load(self, callback)
	if not gm.player_id then 
		print("API LOAD: Nessun Player ID, impossibile caricare.")
		if callback then callback(false) end
		return 
	end

	local url = BASE_URL .. "/databases/" .. DATABASE_ID .. "/collections/" .. COLLECTION_ID .. "/documents/" .. gm.player_id
	local headers = {
		["Content-Type"] = "application/json",
		["X-Appwrite-Project"] = PROJECT_ID
	}

	http.request(url, "GET", function(self, id, response)
		if response.status == 200 then
			local data = json.decode(response.response)

			-- AGGIORNA IL GAMEMANAGER CON I DATI DAL DB
			-- Usiamo 'or' per evitare nil se il campo è vuoto
			gm.knowledge_amount = data.knowledgePoints or 0
			gm.coins = data.coins or 0
			gm.hunger = data.hunger or 50

			print("API LOAD: Dati caricati con successo!")
			if callback then callback(true) end
		else
			print("API LOAD: Nessun dato trovato o errore " .. response.status)
			if callback then callback(false) end
		end
	end, headers)
end

-- Funzione pubblica per salvare i dati
function M.save(self, callback)
	if not gm.player_id then 
		print("API SAVE: Nessun Player ID, salto salvataggio.")
		if callback then callback() end 
		return 
	end

	local url = BASE_URL .. "/databases/" .. DATABASE_ID .. "/collections/" .. COLLECTION_ID .. "/documents/" .. gm.player_id

	local payload = {
		data = {
			knowledgePoints = tonumber(gm.knowledge_amount) or 0,
			coins = tonumber(gm.coins) or 0,
			hunger = tonumber(gm.hunger) or 50
		}
	}

	local headers = {
		["Content-Type"] = "application/json",
		["X-Appwrite-Project"] = PROJECT_ID
	}

	http.request(url, "PATCH", function(self, id, response)
		if response.status == 200 then
			print("API SAVE: Dati aggiornati correttamente!")
			-- Successo: eseguiamo la callback e usciamo
			if callback then callback() end
		elseif response.status == 404 then
			print("API SAVE: Documento non trovato, provo a crearlo...")
			-- Passiamo la callback alla funzione di creazione
			create_user_document(self, payload, headers, callback)
		else
			print("API SAVE: Errore " .. response.status)
			-- Anche in caso di errore generico, eseguiamo la callback per non bloccare il gioco
			if callback then callback() end
		end
	end, headers, json.encode(payload))
end

return M