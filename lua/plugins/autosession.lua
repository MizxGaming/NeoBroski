return {
	"rmagatti/auto-session",
	lazy = false,
	opts = {
		log_level = "error",
		-- auto_session_suppress_dirs = { "~/", "~/Downloads", "/" },
	},
	config = function(_, opts)
		require("auto-session").setup(opts)

		local map = vim.keymap.set
		map("n", "<leader>ss", "<cmd>AutoSession save<cr>", { desc = "Session: Save" })
		map("n", "<leader>sr", "<cmd>AutoSession restore<cr>", { desc = "Session: Restore" })
	end,
}
