local M = {
	current_level = "",
	money_amount = 0,
	knowledge_amount = 100,
	hunger_amount = 100
}

function M.set_current_level(new_level)
	M.current_level = new_level
end

function M.get_current_level()
	return M.current_level
end

return M