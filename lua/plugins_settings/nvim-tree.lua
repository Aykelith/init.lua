local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    print("Not found nvim-tree")
	return
end

local width = vim.api.nvim_get_option("columns")
local height = vim.api.nvim_get_option("lines")
local win_height = math.ceil(height * 0.8 - 4)
local win_width = math.ceil(width * 0.8)
local row = math.ceil((height - win_height) / 2 - 1)
local col = math.ceil((width - win_width) / 2)

local function on_attach(bufnr)
    local api = require('nvim-tree.api')

    local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    api.config.mappings.default_on_attach(bufnr)
    vim.keymap.set('n', 'l', api.node.open.edit, opts('Open'))
    vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
    vim.keymap.set('n', 'o', api.node.open.edit, opts('Open'))
    vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('Close Directory'))
    vim.keymap.set('n', 'v', api.node.open.vertical, opts('Open: Vertical Split'))
end

nvim_tree.setup({
    sort_by = "name",
    -- open_on_setup = true,
	renderer = {
		root_folder_modifier = ":t",
		highlight_git = true, -- show different the gitignored files
        highlight_opened_files = "name",
		icons = {
			git_placement = "after",
			glyphs = {
				default = "",
				symlink = "",
				folder = {
					arrow_open = "",
					arrow_closed = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "",
					staged = "S",
					unmerged = "",
					renamed = "➜",
					untracked = "U",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
	git = {
		ignore = false, -- show gitignored files
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
    on_attach = on_attach,
	view = {
		width = win_width,
		-- height = win_height,
		side = "left",
		float = {
			enable = true,
			open_win_config = {
				relative = "editor",
				border = "rounded",
				width = win_width,
				height = win_height,
				row = row,
				col = col,
			},
		},
	},
})

