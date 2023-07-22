return {
	format_on_save = {
		enabled = true,
		allow_filetypes = {
			"lua",
		},
	},
	timeout_ms = 3200, -- adjust the timeout_ms variable for formatting
	disabled = { "lua_ls" },
	filter = function(client)
		-- only enable null-ls for javascript files
		if vim.bo.filetype == "javascript" then
			return client.name == "null-ls"
		end

		-- enable all other clients
		return true
	end,

	cmd = {
		"rustup",
		"run",
		"run-analyzer",
	},
}
