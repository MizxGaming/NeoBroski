return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"html",
					"cssls",
					"pyright",
					"clangd",
					"ts_ls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- 1. Standard keymaps using the modern LspAttach autocmd
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local opts = { buffer = args.buf }
					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
				end,
			})

			-- 2. Enable servers using the new Nvim 0.11+ native API
			local servers = { "lua_ls", "html", "cssls", "pyright", "clangd", "ts_ls" }

			for _, lsp in ipairs(servers) do
				-- Use the native enable function instead of legacy .setup()
				vim.lsp.enable(lsp)
			end
		end,
	},
}
