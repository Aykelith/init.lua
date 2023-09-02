local opts = { noremap = true, silent = true }

vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<Space>e", ":NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<Leader>d", ":Bdelete<CR>", opts)

-- Visual Block --
-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Normal --
-- Better window navigation, WinMove defined in `winmove.lua`
vim.keymap.set("n", "<C-h>", ":call WinMove('h')<CR>", opts)
vim.keymap.set("n", "<C-j>", ":call WinMove('j')<CR>", opts)
vim.keymap.set("n", "<C-k>", ":call WinMove('k')<CR>", opts)
vim.keymap.set("n", "<C-l>", ":call WinMove('l')<CR>", opts)


