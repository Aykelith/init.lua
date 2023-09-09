return require('packer').startup(function(use)
    use({ 'wbthomason/packer.nvim', config = [[require('plugins_settings.packer')]] })   -- package manager
    use({ "moll/vim-bbye", event = 'VimEnter' })
    use({ 'kyazdani42/nvim-web-devicons' })                                              -- icons
    use({                                                                                -- file explorer
        'kyazdani42/nvim-tree.lua',
        event = 'VimEnter',
        requires = {{ 'kyazdani42/nvim-web-devicons' }},
        config = function()
            require('plugins_settings.nvim-tree')
        end,
    })
    use({ 'sainnhe/sonokai' })                                                     -- theme
    use({                                                                                -- status bar
        'nvim-lualine/lualine.nvim',
        event = 'VimEnter',
        config = function()
            require('plugins_settings/lualine')
        end,
    })
    use({ 'onsails/lupkind.nvim', event = 'VimEnter' })                                  -- vscode-like pictograms to neovim built-in lsp
    --[[ use({                                                                                -- showing diagnostics
        'folke/trouble.nvim',
        event = 'VimEnter',
        config = function()
            require("trouble").setup({
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            })
        end
    }) --]]
    use({
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v1.x',
	    requires = {
		    -- LSP Support
		    {'neovim/nvim-lspconfig'},
		    {'williamboman/mason.nvim'},
		    {'williamboman/mason-lspconfig.nvim'},

		    -- Autocompletion
		    {'hrsh7th/nvim-cmp'},
		    {'hrsh7th/cmp-buffer'},
		    {'hrsh7th/cmp-path'},
		    {'saadparwaiz1/cmp_luasnip'},
		    {'hrsh7th/cmp-nvim-lsp'},
		    {'hrsh7th/cmp-nvim-lua'},

		    -- Snippets
		    {'L3MON4D3/LuaSnip'},
		    {'rafamadriz/friendly-snippets'},
	    }
    })

    -- use('mbbill/undotree')
    --[[ use({
        "rcarriga/nvim-notify",
        event = "BufEnter",
        config = function()
            vim.defer_fn(function()
                require("plugins_settings.nvim-notify")
            end, 2000)
        end,
    }) --]]

    require('plugins_settings.lsp')
end)
