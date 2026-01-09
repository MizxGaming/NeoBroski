return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			-- In the new 'main' branch, we use the 'nvim-treesitter' module directly
			local ts = require("nvim-treesitter")

			ts.setup({
				ensure_installed = {
					"lua",
					"vim",
					"vimdoc",
					"python",
					"cpp",
					"html",
					"css",
					"java",
					"javascript",
					"bash",
				},
				highlight = { enable = true },
				indent = { enable = true },
				sync_install = false,
				auto_install = false, -- This helps silence the logs
			})
		end,
	},
}
