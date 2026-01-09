return {
	"akinsho/toggleterm.nvim",
	version = "*", -- Pinning to the stable version as you prefer
	config = function()
		require("toggleterm").setup({
			size = 10,
			open_mapping = [[<a-\>]], -- Alt+\ to toggle (matches your old setup)
			direction = "float",
			float_opts = {
				border = "curved",
				width = 160,
				height = 30,
			},
		})

		-- Custom terminal keymaps to make it feel like a real shell
		function _G.set_terminal_keymaps()
			local opts = { buffer = 0 }
			vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts) -- Esc to exit terminal mode
			vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], opts)
			vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], opts)
			vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], opts)
			vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], opts)
		end

		-- Auto-apply these mappings only when a terminal opens
		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
	end,
}
