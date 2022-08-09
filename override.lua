local M = {}

M.nvimtree = {
  open_on_setup = true,
  git = {
    enable = true,
    ignore = false,
  },
 renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "html",
    "css",
    "javascript",
    "json",
    "toml",
    "markdown",
    "bash",
    "lua",
    "ruby",
  }
}

M.mason = {
  ensure_installed = require("custom.lsp_servers").servers
}

return M
