local map = vim.keymap.set
local k = vim.keycode

map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })

-- map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Comment, nvim 0.10.0 buid-in support
map("n", "<leader>/", "gcc", { desc = "comment toggle", remap = true })
map("v", "<leader>/", "gc", { desc = "comment toggle", remap = true })

-- Indent and unindent in visual mode
map('v', '>', '>gv', { noremap = true, silent = true })
map('v', '<', '<gv', { noremap = true, silent = true })

-- Move line
map('n', '<C-j>', ':m .+1<CR>==', { noremap = true, silent = true })
map('n', '<C-k>', ':m .-2<CR>==', { noremap = true, silent = true })
map('v', '<C-j>', ':m \'>+1<CR>gv=gv', { noremap = true, silent = true })
map('v', '<C-k>', ':m \'<-2<CR>gv=gv', { noremap = true, silent = true })


