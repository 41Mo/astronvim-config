return {
	{ "ldelossa/nvim-dap-projects" },
	{
		"akinsho/bufferline.nvim",
		version = "v3.*",
		event = "VeryLazy",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				-- Configuration here, or leave empty to use defaults
				options = {
					mode = "tabs", -- set to "tabs" to only show tabpages instead
				},
			})
		end,
	},
	{
		"lambdalisue/suda.vim",
		lazy = false,
	},
	{
		"kylechui/nvim-surround",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	"williamboman/mason-lspconfig.nvim",
	opts = {
		ensure_installed = { "rust_analyzer" },
	},
}
