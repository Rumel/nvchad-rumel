local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = {
  "bashls",
  "clojure_lsp",
  "cssls",
  "dockerls",
  "elixirls",
  "emmet_ls",
  "gopls",
  "html",
  "jsonls",
  "omnisharp",
  "solargraph",
  "tsserver",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end
