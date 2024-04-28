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
	{
		"mrcjkb/rustaceanvim",
		version = "^4", -- Recommended
		ft = { "rust" },
		lazy = false,
		opts = {
			server = {
				on_attach = function(_, bufnr)
					vim.keymap.set("n", "<leader>la", function()
						vim.cmd.RustLsp("codeAction")
					end, { desc = "Code Action", buffer = bufnr })
					vim.keymap.set("n", "<leader>lf", function()
						vim.lsp.buf.format({ async = true })
					end, { desc = "Format", buffer = bufnr })
					vim.keymap.set("n", "<leader>lD", function()
						require("telescope.builtin").diagnostics()
					end, { desc = "Search diagnostics" })
					vim.keymap.set("n", "<leader>ld", function()
						vim.diagnostic.open_float()
					end, { desc = "Hover diagnostics" })
					vim.keymap.set("n", "gd", vim.lsp.buf.definition)
					vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
					vim.keymap.set("n", "K", vim.lsp.buf.hover)
				end,
				default_settings = {
					-- rust-analyzer language server configuration
					["rust-analyzer"] = {
						cargo = {
							allFeatures = false,
							noDefaultFeatures = true,
							-- loadOutDirsFromCheck = true,
							allTargets = false,
						},
						check = {
							overrideCommand = {
								"cargo",
								"check",
								"--message-format=json",
							},
							invocationLocation = "root",
							invocationStrategy = "once",
							workspace = false,
						},
						procMacro = {
							enable = true,
							ignored = {},
						},
					},
				},
				settings = function(project_root)
					local ra = require("rustaceanvim.config.server")
					return ra.load_rust_analyzer_settings(vim.fn.getcwd(), {
						settings_file_pattern = "rust-analyzer.json",
					})
				end,
			},
		},
		config = function(_, opts)
			vim.g.rustaceanvim = vim.tbl_deep_extend("keep", vim.g.rustaceanvim or {}, opts or {})
		end,
	},
}
