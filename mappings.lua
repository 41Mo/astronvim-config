return {
	n = {
		-- switch buffers
		["<S-h>"] = { "<cmd>bprevious<cr>", desc = "Prev buffer" },
		["<S-l>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
	},
	t = {
		-- setting a mapping to false will disable it
		-- ["<esc>"] = false,
	},
}
