vim.api.nvim_create_autocmd("VimEnter", {
  group = vim.api.nvim_create_augroup("run_dap_per_project_on_enter", { clear = true }),
  pattern = "*",
  callback = function() require("nvim-dap-projects").search_project_config() end,
})

vim.api.nvim_create_autocmd({ "FileWritePost", "BufWritePost" }, {
  group = vim.api.nvim_create_augroup("run_dap_per_project_on_write", { clear = true }),
  pattern = "nvim-dap.lua",
  callback = function() require("nvim-dap-projects").search_project_config() end,
})
