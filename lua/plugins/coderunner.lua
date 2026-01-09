return {
	"CRAG666/code_runner.nvim",
	dependencies = "akinsho/toggleterm.nvim",
	config = function()
		require("code_runner").setup({
			mode = "toggleterm",
			filetype = {
				python = "python3 -u",
				cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
				lua = "luafile %",
			},
		})

		-- Your specific mappings
		vim.keymap.set("n", "<leader>rr", ":w | :RunCode<CR>", { desc = "CodeRunner: Run" })
		vim.keymap.set("n", "<leader>rc", ":TermExec cmd='exit'<CR>", { desc = "CodeRunner: Close" })
	end,
}
