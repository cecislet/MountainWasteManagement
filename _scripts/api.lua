local M = {}

local PROJECT_ID = "69d189c1001e4c58e744"
local BASE_URL = "https://cloud.appwrite.io/v1"
local DATABASE_ID = "69d18a00001d8c68673f"
local COLLECTION_ID = "users"

local gm = require "_scripts.GameManager"

local function create_user_document(self, payload, headers, callback)
	local url = BASE_URL .. "/databases/" .. DATABASE_ID .. "/collections/" .. COLLECTION_ID .. "/documents"
	local create_payload = {
		documentId = gm.player_id,
		data = payload.data
	}

	http.request(url, "POST", function(self, id, response)
		if response.status == 201 then
			print("API: Profilo database creato!")
		else
			print("API: Errore creazione: " .. response.status)
		end
		if callback then callback() end
	end, headers, json.encode(create_payload))
end

function M.load(self, callback)
	if not gm.player_id then return end

	local url = BASE_URL .. "/databases/" .. DATABASE_ID .. "/collections/" .. COLLECTION_ID .. "/documents/" .. gm.player_id
	local headers = { ["X-Appwrite-Project"] = PROJECT_ID }

	http.request(url, "GET", function(self, id, response)
		if response.status == 200 then
			local response_data = json.decode(response.response)
			local data = response_data -- Appwrite restituisce i campi direttamente nel corpo della risposta

			-- SINCRONIZZAZIONE CON GAMEMANAGER
			-- Usiamo i nomi esatti delle tue colonne DB (knowledgePoints)
			gm.knowledge_amount = tonumber(data.knowledgePoints) or 0
			gm.coins = tonumber(data.coins) or 0
			gm.hunger = tonumber(data.hunger) or 50
			gm.inventory = json.decode(data.inventory or "[]")

			print("API LOAD OK - Punti: " .. gm.knowledge_amount .. " Monete: " .. gm.coins)
			if callback then callback(true) end
		else
			print("API LOAD FALLITO: " .. response.status)
			if callback then callback(false) end
		end
	end, headers)
end

function M.save(self, callback)
	if not gm.player_id then 
		print("API SAVE: Errore, player_id mancante!")
		if callback then callback() end 
		return 
	end

	local url = BASE_URL .. "/databases/" .. DATABASE_ID .. "/collections/" .. COLLECTION_ID .. "/documents/" .. gm.player_id

	-- I nomi a sinistra (es: knowledgePoints) DEVONO essere identici a quelli su Appwrite
	local payload = {
		data = {
			knowledgePoints = math.floor(tonumber(gm.knowledge_amount) or 0),
			coins = math.floor(tonumber(gm.coins) or 0),
			hunger = math.floor(tonumber(gm.hunger) or 50),
			inventory = json.encode(gm.inventory or {})
		}
	}

	local headers = {
		["Content-Type"] = "application/json",
		["X-Appwrite-Project"] = PROJECT_ID
	}

	http.request(url, "PATCH", function(self, id, response)
		if response.status == 200 then
			print("API SAVE: Dati salvati con successo!")
			if callback then callback() end
		elseif response.status == 404 then
			print("API SAVE: Documento non trovato, provo a crearlo...")
			create_user_document(self, payload, headers, callback)
		else
			print("API SAVE ERRORE: " .. response.status .. " - " .. response.response)
			if callback then callback() end
		end
	end, headers, json.encode(payload))
end

return M