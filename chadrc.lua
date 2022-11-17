-- Just an example, supposed to be placed in /lua/custom/
local M = {}
local override = require "custom.override"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.plugins = {
    override = {
        ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
        ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
        ["williamboman/mason.nvim"] = override.mason
    },

    user = require "custom.plugins"
}

local themes = {
  "aquarium",
  "ayu-dark",
  "blossom",
  "catppuccin",
  "catppuccin_latte",
  "chadracula",
  "chadtain",
  "chocolate",
  "dark_horizon",
  "decay",
  "doomchad",
  "everforest",
  -- "everforest_light",
  "falcon",
  "gatekeeper",
  "gruvbox",
  -- "gruvbox_light",
  "gruvbox_material",
  "gruvchad",
  "jellybeans",
  "kanagawa",
  "monekai",
  "mountain",
  "nightfox",
  "nightlamp",
  "nightowl",
  "nord",
  "oceanic-next",
  -- "one_light",
  "onedark",
  "onenord",
  -- "onenord_light",
  "palenight",
  "pastelDark",
  "radium",
  "rosepine",
  "rxyhn",
  "solarized_dark",
  "sweetpastel",
  "tokyodark",
  "tokyonight",
  "tomorrow_night",
  "vscode_dark",
  "wombat",
  "yoru",
}

math.randomseed(os.time())
local random_int = math.random(1,#themes)

M.ui = {theme = themes[random_int]}

M.mappings = require "custom.mappings"

return M
