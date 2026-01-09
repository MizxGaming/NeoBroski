local map = vim.keymap.set

-- Command mode shortcut
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Your custom split logic
map("n", "<leader>h", "<cmd>split<cr>", { desc = "Window: Horizontal Split" })
map("n", "<leader>v", "<cmd>vsplit<cr>", { desc = "Window: Vertical Split" })

-- Jump between NvimTree and code windows
map("n", "<C-h>", "<C-w>h", { desc = "Window: Focus Left" })
map("n", "<C-l>", "<C-w>l", { desc = "Window: Focus Right" })

-- Split navigation (Alt keys)
map("n", "<A-h>", "<C-w>h")
map("n", "<A-j>", "<C-w>j")
map("n", "<A-k>", "<C-w>k")
map("n", "<A-l>", "<C-w>l")

-- Buffer navigation (Familiar NvChad feel)
map("n", "<Tab>", "<cmd>BufferNext<CR>", { desc = "Buffer: Next" })
map("n", "<S-Tab>", "<cmd>BufferPrevious<CR>", { desc = "Buffer: Previous" })
map("n", "<leader>x", "<cmd>BufferClose<CR>", { desc = "Buffer: Close" })
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "Buffer: New (New Tab)" })

-- Better line movement in Insert Mode
map("i", "<C-b>", "<ESC>^i", { desc = "Move to Beginning of Line" })
map("i", "<C-e>", "<End>", { desc = "Move to End of Line" })
map("i", "<C-h>", "<Left>", { desc = "Move Left" })
map("i", "<C-l>", "<Right>", { desc = "Move Right" })

-- Better Indentation (NvChad style)
map("v", "<", "<v", { desc = "Indent: Left" })
map("v", ">", ">v", { desc = "Indent: Right" })
