-- Options --------------------------------------------------------------------
vim.opt.tabstop = 4                -- Default tab to 4
vim.opt.shiftwidth = 4             -- Default tab when using >> or <<
vim.opt.expandtab = true           -- Spaces instead of tab
vim.opt.autoindent = true          -- If the previous line was indented then indent the next line also with the same indent level
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.timeoutlen = 100                        -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.updatetime = 300                        -- faster completion (4000ms default)
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.wrap = false                            -- display lines as one long line
vim.opt.backup = false                          -- creates a backup file
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 1                           -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = false                       -- ignore case in search patterns
vim.opt.mouse = ""                              -- no allow the mouse to be used in neovim
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
vim.opt.signcolumn = "yes"                      -- always draw the signcolumn (the column to show error symbol on line)
vim.opt.scrolloff = 8                           -- number of above/below lines to always show when scrolling
vim.opt.updatetime = 50
-------------------------------------------------------------------------------

-- Globals --------------------------------------------------------------------
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-------------------------------------------------------------------------------

vim.g.logging_level = "debug"
