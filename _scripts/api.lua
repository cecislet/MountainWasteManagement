local M = {}

local PROJECT_ID = "69d189c1001e4c58e744"
local BASE_URL = "https://cloud.appwrite.io/v1"
local DATABASE_ID = "69d18a00001d8c68673f"
local COLLECTION_ID = "users"

local gm = require "_scripts.GameManager"

-- FUNZIONE MAGICA: Restituisce i secondi attuali UTC (Londra)
-- Funziona identico in USA, Italia o Svizzera.
local function get_now_utc()
	return os.time(os.date("!*t"))
end

local function create_user_document(self, payload, headers, callback)
	local url = BASE_URL .. "/databases/" .. DATABASE_ID .. "/collections/" .. COLLECTION_ID .. "/documents"
	local create_payload = {
		documentId = gm.player_id,
		data = payload.data
	}

	http.request(url, "POST", function(self, id, response)
		if response.status == 201 then
			print("API: Profilo creato!")
		else
			print("API: Errore creazione: " .. response.status)
		end
		if callback then callback(response.status == 201) end
	end, headers, json.encode(create_payload))
end

function M.load(self, callback)
	if not gm.player_id then return end

	local url = BASE_URL .. "/databases/" .. DATABASE_ID .. "/collections/" .. COLLECTION_ID .. "/documents/" .. gm.player_id
	local headers = { ["X-Appwrite-Project"] = PROJECT_ID }

	http.request(url, "GET", function(self, id, response)
		if response.status == 200 then
			local data = json.decode(response.response)

			-- 1. Caricamento Dati
			gm.mood = tonumber(data.mood) or 100
			gm.knowledge_amount = tonumber(data.knowledgePoints) or 0
			gm.coins = tonumber(data.coins) or 0
			-- Se il DB è vuoto, facciamo partire lo Yeti a 100 (Sazio)
			local hunger_from_db = tonumber(data.hunger) or 100 
			gm.inventory = (type(data.inventory) == "string" and data.inventory ~= "") and json.decode(data.inventory) or {}

			-- 2. Calcolo Fame Offline (Metodo dei Secondi Puri)
			local last_save = tonumber(data.lastSave) or 0

			if last_save > 0 then
				local current_time = get_now_utc()
				local seconds_passed = current_time - last_save

				if seconds_passed > 0 then
					local rate = gm.hunger_rate_offline or 0.00115
					-- SOTTRAGGO la fame (si svuota la pancia) invece di aggiungere
					gm.hunger = math.max(0, hunger_from_db - (seconds_passed * rate))
					print("API: Passati " .. math.floor(seconds_passed / 60) .. " minuti. Fame diminuita.")
				else
					gm.hunger = hunger_from_db
				end
			else
				gm.hunger = hunger_from_db
			end

			print("API LOAD OK - Sazietà finale: " .. math.floor(gm.hunger) .. "/100")
			if callback then callback(true) end
		else
			print("API LOAD FALLITO: " .. response.status)
			if callback then callback(false) end
		end
	end, headers)
end

function M.save(self, callback)
	if not gm.player_id then return end

	local url = BASE_URL .. "/databases/" .. DATABASE_ID .. "/collections/" .. COLLECTION_ID .. "/documents/" .. gm.player_id

	-- Salviamo i dati + il timestamp UTC attuale
	local payload = {
		data = {
			mood = math.floor(gm.mood or 0),
			knowledgePoints = math.floor(gm.knowledge_amount or 0),
			coins = math.floor(gm.coins or 0),
			hunger = math.floor(gm.hunger or 0),
			inventory = json.encode(gm.inventory or {}),
			lastSave = get_now_utc() -- SALVIAMO IL MOMENTO ESATTO IN SECONDI
		}
	}

	local headers = {
		["Content-Type"] = "application/json",
		["X-Appwrite-Project"] = PROJECT_ID
	}

	http.request(url, "PATCH", function(self, id, response)
		if response.status == 200 then
			print("API SAVE: Successo!")
			if callback then callback(true) end
		elseif response.status == 404 then
			create_user_document(self, payload, headers, callback)
		else
			print("API SAVE ERRORE: " .. response.status)
			if callback then callback(false) end
		end
	end, headers, json.encode(payload))
end

return M