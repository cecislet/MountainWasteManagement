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

-- Nel api.lua
function M.load(self, callback)
	if not gm.player_id then return end

	local url = BASE_URL .. "/databases/" .. DATABASE_ID .. "/collections/" .. COLLECTION_ID .. "/documents/" .. gm.player_id
	local headers = { ["X-Appwrite-Project"] = PROJECT_ID }

	http.request(url, "GET", function(self, id, response)
		if response.status == 200 then
			local data = json.decode(response.response)

			gm.high_score = tonumber(data.high_score) or 0
			gm.mood = tonumber(data.mood) or 100
			gm.knowledge_amount = tonumber(data.knowledgePoints) or 0
			gm.coins = tonumber(data.coins) or 0

			if data.name and data.name ~= "" then
				gm.name = data.name
			end

			local hunger_from_db = tonumber(data.hunger) or 0

			gm.inventory = (data.inventory and data.inventory ~= "") and json.decode(data.inventory) or {}
			gm.unlocked_items = (data.unlocked_items and data.unlocked_items ~= "") and json.decode(data.unlocked_items) or { "none" }
			gm.equipped = (data.equipped and data.equipped ~= "") and json.decode(data.equipped) or { hat = "none", shirt = "none", pants = "none" }

			local last_save = tonumber(data.lastSave) or 0
			if last_save > 0 then
				local seconds_passed = get_now_utc() - last_save
				if seconds_passed > 0 then
					local rate = gm.hunger_rate_offline or 0.00115
					gm.hunger = math.min(100, hunger_from_db + (seconds_passed * rate))
				else
					gm.hunger = hunger_from_db
				end
			else
				gm.hunger = hunger_from_db
			end

			if callback then callback(true) end
		else
			if callback then callback(false) end
		end
	end, headers)
end

function M.save(self, callback)
	if not gm.player_id then return end

	if gm.hunger > 100 then
		gm.hunger = 100
	elseif gm.hunger < 0 then
		gm.hunger = 0
	end

	if gm.mood > 100 then
		gm.mood = 100
	elseif gm.mood < 0 then
		gm.mood = 0
	end
		
	local url = BASE_URL .. "/databases/" .. DATABASE_ID .. "/collections/" .. COLLECTION_ID .. "/documents/" .. gm.player_id
	local payload = {
		data = {
			mood = math.floor(gm.mood or 0),
			knowledgePoints = math.floor(gm.knowledge_amount or 0),
			coins = math.floor(gm.coins or 0),
			hunger = math.floor(gm.hunger or 0),
			inventory = json.encode(gm.inventory or {}),
			unlocked_items = json.encode(gm.unlocked_items or { "none" }),
			equipped = json.encode(gm.equipped or { hat = "none", shirt = "none", pants = "none" }),
			lastSave = get_now_utc(),
			high_score = math.floor(gm.high_score or 0),
			name = gm.name or "Player" -- ASSICURATI CHE IL NOME SIA SEMPRE PRESENTE
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
			print("API SAVE ERRORE 400: Controlla che tutti i nomi delle colonne nel database siano corretti!")
			if callback then callback(false) end
		end
	end, headers, json.encode(payload))
end

function M.get_leaderboard(self, callback)
	local url = BASE_URL .. "/databases/" .. DATABASE_ID .. "/collections/" .. COLLECTION_ID .. "/documents"
	local headers = {
		["X-Appwrite-Project"] = PROJECT_ID
	}
	http.request(url, "GET", function(self, id, response)
		if response.status == 200 then
			local data = json.decode(response.response)
			local docs = data.documents or {}

			table.sort(docs, function(a, b)
				return (a.high_score or 0) > (b.high_score or 0)
			end)

			local top10 = {}
			for i = 1, math.min(10, #docs) do
				table.insert(top10, docs[i])
			end

			if callback then 
				callback(true, top10) 
			end
		else
			if callback then callback(false, nil) end
		end
	end, headers)
end

return M