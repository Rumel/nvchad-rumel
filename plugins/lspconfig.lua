local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = {
  "bashls",
  "clojure_lsp",
  "cssls",
  "dockerls",
  "emmet_ls",
  "eslint",
  "gopls",
  "html",
  "jedi_language_server",
  "jsonls",
  "omnisharp",
  "solargraph",
  "sumneko_lua",
  "tsserver",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

DATA_PATH = vim.fn.stdpath('data')

require'lspconfig'.elixirls.setup {
  cmd = { DATA_PATH.."/mason/bin/elixir-ls" },
  on_attach = on_attach,
  capabilities = capabilities,
}
