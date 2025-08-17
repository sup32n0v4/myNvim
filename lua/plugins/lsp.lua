return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { 'lua_ls', 'pyright' }
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        { "neovim/nvim-lspconfig" },
    },
    config = function()
        vim.lsp.enable({ 'lua_ls', 'pyright' })
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
}
