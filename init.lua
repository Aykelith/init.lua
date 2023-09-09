require("options")
require("keymaps")
require("plugins")
require("win_move")

vim.cmd[[autocmd BufNewFile,BufRead *.i3config set filetype=i3config]]

vim.cmd[[let g:sonokai_style = 'shusia']]
vim.cmd[[let g:sonokai_better_performance = 1]]
vim.cmd[[colorscheme sonokai]]
