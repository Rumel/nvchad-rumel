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
  ["phaazon/hop.nvim"] ={
    branch = 'v2',
    config = function()
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }
}
