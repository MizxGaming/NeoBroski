return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000, -- Load this first
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- or frappe, macchiato, latte
				-- transparent_background = true, -- Matching your NvChad preference
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
