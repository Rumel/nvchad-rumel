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
    "bash",
    "c_sharp",
    "clojure",
    "css",
    "dockerfile",
    "go",
    "html",
    "java",
    "javascript",
    "json",
    "lua",
    "markdown",
    "python",
    "ruby",
    "rust",
    "toml",
    "typescript",
    "vim",
  }
}

M.mason = {
  ensure_installed = {
    "bash-language-server",
    "clojure-lsp",
    "css-lsp",
    "dockerfile-language-server",
    "elixir-ls",
    "emmet-ls",
    "gopls",
    "html-lsp",
    "json-lsp",
    "omnisharp",
    "solargraph",
    "typescript-language-server",
  }
}

return M
