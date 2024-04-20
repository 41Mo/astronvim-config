return {
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
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},
	{
		"kylechui/nvim-surround",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup()
		end,
	},
}
