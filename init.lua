-- example file i.e lua/custom/init.lua
-- load your options globals, autocmds here or anything .__.
-- you can even override default options here (core/options.lua)

-- ["APZelos/blamer.nvim"]
vim.g.blamer_enabled = 1
vim.g.blamer_template = '<author>, <author-time> • <summary>'
vim.g.blamer_date_format = '%m/%d/%y %I:%M %p'
vim.g.blamer_relative_time = 1

vim.opt.incsearch = true
vim.opt.number = true

-- Highlight yanked portion briefly
local yankGrp = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  command = "silent! lua vim.highlight.on_yank()",
  group = yankGrp,
})
