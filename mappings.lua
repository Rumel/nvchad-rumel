local M = {}

M.general = {
  i = {
    ["jj"] = { "<ESC>", "Alternative to <ESC>" },
  },
  n = {
    -- Trouble
    ["<leader>xx"] = { "<cmd>Trouble<cr>", "Trouble" },
    ["<leader>xw"] = { "<cmd>Trouble workspace_diagnostics<cr>", "Trouble workspace_diagnostics" },
    ["<leader>xd"] = { "<cmd>Trouble document_diagnostics<cr>", "Trouble document_diagnostics" },
    ["<leader>xl"] = { "<cmd>Trouble loclist<cr>", "Trouble loclist" },
    ["<leader>xq"] = { "<cmd>Trouble quickfix<cr>", "Trouble quickfix" },
    ["gR"] = { "<cmd>Trouble lsp_references<cr>", "Trouble lsp_references" },
  }
}

return M
