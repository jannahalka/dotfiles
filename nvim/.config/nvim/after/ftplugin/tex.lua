-- Indentation & formatting
vim.opt_local.wrap = true
vim.opt_local.linebreak = true
vim.opt_local.textwidth = 80
vim.opt_local.colorcolumn = "80"

-- Tabs / spaces
vim.opt_local.expandtab = true
vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2

-- Spellchecking (very useful for writing)
vim.opt_local.spell = true
vim.opt_local.spelllang = { "en" }

-- Conceal (nice for math)
vim.opt_local.conceallevel = 2
vim.opt_local.concealcursor = "nc"

-- Folding (works great with VimTeX)
vim.opt_local.foldmethod = "expr"
vim.opt_local.foldexpr = "vimtex#fold#level(v:lnum)"
vim.opt_local.foldlevel = 99
