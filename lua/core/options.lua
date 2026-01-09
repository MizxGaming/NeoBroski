local opt = vim.opt

-- Always show a single global statusline at the bottom
vim.opt.laststatus = 3

-- Replicating your current tab settings
opt.shiftwidth = 4
opt.tabstop = 4
opt.expandtab = true

-- Modern defaults
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.cursorline = false

-- Enable only for NvimTree
vim.api.nvim_create_autocmd("FileType", {
	pattern = "NvimTree",
	callback = function()
		vim.opt_local.cursorline = true
	end,
})
