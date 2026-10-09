local opt = vim.opt_local

-- Indentation (Typst is not whitespace-sensitive; 2 spaces tends to feel nice)
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2

-- Writing ergonomics (notes / prose)
opt.wrap = true
opt.linebreak = true
opt.breakindent = true
opt.spell = true
opt.spelllang = { "en_us" } -- add "da" if you want: { "en_us", "da" }

-- Don’t hard-wrap automatically; still allow manual reflow with gq if you like
opt.textwidth = 0
opt.formatoptions:remove({ "t" })      -- no auto text wrap while typing
opt.formatoptions:append({ "q", "j" }) -- gq formatting, remove comment leader on join

-- Comments
vim.bo.commentstring = "// %s"

vim.opt_local.backupcopy = "yes"
vim.opt_local.writebackup = true
vim.opt_local.backup = false

vim.keymap.set("n", "<leader>tw", function()
  local input = vim.fn.expand("%:p")
  local output = vim.fn.expand("%:p:r") .. ".pdf"

  vim.cmd("belowright split | resize 12")
  vim.fn.termopen({ "typst", "watch", "--diagnostic-format=short", input, output })
  vim.cmd("startinsert")
end, { buffer = true, desc = "Typst: watch in terminal split" })
