require("config")

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'go',
    callback = function()
        vim.treesitter.start()
    end,
})

vim.lsp.enable({ "clangd", "ruff", "lua_ls", "gopls", "ty" })
vim.diagnostic.config({ virtual_text = true })
vim.cmd("set completeopt+=noselect")
