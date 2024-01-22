local function disable_editor_cfg()
	vim.g.editorconfig = false
end

local function set_colorolumn()
	vim.opt.colorcolumn = "80"
end

return {
	disable_editor_cfg(),
	set_colorolumn(),
}
