return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- optional: for git status
		"nvim-tree/nvim-web-devicons", -- optional: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {
		animation = true,
		auto_hide = false,
		tabpages = true,
		closable = true,
		clickable = true,
		separators = {
			left = "",
			right = "",
		},
		-- Match the NvChad offset for the File Tree
		sidebar_filetypes = {
			NvimTree = { text = "EXPLORER", align = "center" },
		},
	},
}
