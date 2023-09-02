require("options")
require("keymaps")
require("plugins")
require("win_move")

vim.cmd[[autocmd BufNewFile,BufRead *.i3config set filetype=i3config]]

vim.cmd[[colorscheme tokyonight-night]]
