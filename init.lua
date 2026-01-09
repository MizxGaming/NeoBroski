-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 1. Bootstrap lazy.nvim (Plugin Manager)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- 2. Load your custom modules
require("core.options")
require("core.mappings")

-- 3. Setup lazy.nvim to look in the 'plugins' folder
require("lazy").setup("plugins")
