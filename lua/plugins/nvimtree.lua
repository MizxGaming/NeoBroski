return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	config = function()
		vim.schedule(function()
			require("nvim-tree").setup({
				filters = { dotfiles = false },
				disable_netrw = true,
				hijack_cursor = true,
				sync_root_with_cwd = true,
				update_focused_file = {
					enable = true,
					update_root = false,
				},
				view = {
					width = 30,
					preserve_window_proportions = true,
				},
				-- Performance Tweaks
				filesystem_watchers = {
					enable = true,
					debounce_delay = 50,
				},
				git = {
					enable = true,
					show_on_dirs = true,
					timeout = 400, -- Don't let slow git commands hang the UI
				},
				renderer = {
					root_folder_label = false,
					highlight_git = true,
					indent_markers = { enable = true },
					icons = {
						glyphs = {
							default = "󰈚",
							folder = {
								default = "",
								empty = "",
								empty_open = "",
								open = "",
								symlink = "",
							},
							git = { unmerged = "" },
						},
					},
				},
			})
		end)

		-- Keybinds
		local map = vim.keymap.set
		map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "NvimTree: Toggle" })
		map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "NvimTree: Focus" })
	end,
}
