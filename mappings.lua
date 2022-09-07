local M = {}

M.general = {
  i = {
    ["jj"] = { "<ESC>", "Alternative to <ESC>" },
  },
}

M.hop = {-- normal mode (easymotion-like)
  n = {
    ["<Leader><Leader>b"] = { "<cmd>HopWordBC<CR>", "Hop word before cursor" },
    ["<Leader><Leader>w"] = { "<cmd>HopWordAC<CR>", "Hop word after cursor" },
    ["<Leader><Leader>j"] = { "<cmd>HopLineAC<CR>", "Hop line up" },
    ["<Leader><Leader>k"] = { "<cmd>HopLineBC<CR>", "Hop line down" },
    ["<Leader><Leader>l"] = { "<cmd>HopLine<CR>", "Hop line" },
    ["<Leader><Leader>f"] = { "<cmd>HopChar1<CR>", "Jump to character" },
    ["s"] = { "<cmd>HopChar2AC<CR>", "Sneak forward" },
    ["S"] = { "<cmd>HopChar2BC<CR>", "Sneak backward" },
  },
  v = {
    ["<Leader><Leader>b"] = { "<cmd>HopWordBC<CR>", "Hop word before cursor" },
    ["<Leader><Leader>w"] = { "<cmd>HopWordAC<CR>", "Hop word after cursor" },
    ["<Leader><Leader>j"] = { "<cmd>HopLineAC<CR>", "Hop line up" },
    ["<Leader><Leader>k"] = { "<cmd>HopLineBC<CR>", "Hop line down" },
    ["<Leader><Leader>l"] = { "<cmd>HopLine<CR>", "Hop line" },
    ["<Leader><Leader>f"] = { "<cmd>HopChar1<CR>", "Jump to character" },
    ["s"] = { "<cmd>HopChar2AC<CR>", "Sneak forward" },
    ["S"] = { "<cmd>HopChar2BC<CR>", "Sneak backward" },
  }
}

M.neoclip = {
  n = {
    ["<Leader>fp"] = { ":lua require('telescope').extensions.neoclip.default()<CR>", "Open neoclip" }
  }
}

M.trouble = {
  n = {
    ["<leader>xx"] = { "<cmd>Trouble<cr>", "Trouble" },
    ["<leader>xw"] = { "<cmd>Trouble workspace_diagnostics<cr>", "Trouble workspace_diagnostics" },
    ["<leader>xd"] = { "<cmd>Trouble document_diagnostics<cr>", "Trouble document_diagnostics" },
    ["<leader>xl"] = { "<cmd>Trouble loclist<cr>", "Trouble loclist" },
    ["<leader>xq"] = { "<cmd>Trouble quickfix<cr>", "Trouble quickfix" },
    ["gR"] = { "<cmd>Trouble lsp_references<cr>", "Trouble lsp_references" },
  }
}

return M
