return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["github/copilot.vim"] = {},
  ["APZelos/blamer.nvim"] = {},
  ["folke/trouble.nvim"] = {
    config = function()
      require("trouble").setup {}
    end,
  },
  ["folke/which-key.nvim"] = {
    disable = false,
  },
  ["tpope/vim-rails"] = {},
  ["phaazon/hop.nvim"] = {
    branch = 'v2',
    config = function()
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  },
  ["AckslD/nvim-neoclip.lua"] = {
    config = function()
      require('neoclip').setup()
    end
  },
  ["kylechui/nvim-surround"] = {
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup()
    end
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    requires = {
      {'neovim/nvim-lspconfig'},
      {'nvim-lua/plenary.nvim'}
    },
    config = function()
        local null_ls = require("null-ls")
        local sources = {
            null_ls.builtins.code_actions.gitsigns,
            null_ls.builtins.formatting.black,
            null_ls.builtins.formatting.rubocop,
            null_ls.builtins.diagnostics.rubocop,
            null_ls.builtins.diagnostics.shellcheck
        }
        null_ls.setup({sources = sources, debug = true})
    end
  }
}
