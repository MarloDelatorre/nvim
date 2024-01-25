vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.cmd [[set relativenumber]]
vim.cmd [[set number]]

vim.cmd [[set tabstop=4]]
vim.cmd [[set shiftwidth=4]]

vim.cmd [[colorscheme tokyonight-night]]

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'folke/tokyonight.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.x',
        requires = {
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep',
        },
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        },
    }

end)

