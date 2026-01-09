return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000, -- Load this first
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- or frappe, macchiato, latte
				integrations = {
					barbar = true,
					cmp = true,
					gitsigns = true,
					harpoon = true,
					-- lualine = true,
					mason = true,
					neotree = true,
					notify = true,
					nvimtree = true,
					telescope = true,
					treesitter = true,
					which_key = true,
				},
				-- transparent_background = true, -- Matching your NvChad preference
				custom_highlights = function(colors)
					return {
						PmenuSel = { bg = colors.blue, fg = colors.base, style = { "bold" } },
						Pmenu = { bg = colors.base },
					}
				end,
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
