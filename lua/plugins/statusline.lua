return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "catppuccin",
				-- These "round" separators create the NvChad bubble effect
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = { "lazy" },
			},
			sections = {
				lualine_a = { { "mode", separator = { left = "", right = "" }, right_padding = 2 } },
				lualine_b = { "filename" },
				lualine_c = { "branch" },
				lualine_x = { "encoding", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { { "location", separator = { right = "" }, left_padding = 2 } },
			},
		})
	end,
}
