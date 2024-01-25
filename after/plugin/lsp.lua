local lsp_zero = require('lsp-zero')
local lspconfig = require('lspconfig')

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        "clangd",
        "lua_ls",
        "tsserver",
    },
    handlers = {
        lsp_zero.default_setup(),
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            lspconfig.lua_ls.setup(lua_opts)
        end,
    }
})

lspconfig.tsserver.setup({})
lspconfig.clangd.setup({})
