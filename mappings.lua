return {
	n = {
		["<S-h>"] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
		["<S-l>"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
		["<leader>lk"] = { "<cmd>lua vim.lsp.buf.hover()<CR>", desc = "Hover help" },
	},
	t = {
		-- setting a mapping to false will disable it
		-- ["<esc>"] = false,
	},
}
