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
  "tsserver",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

DATA_PATH = vim.fn.stdpath('data')

lspconfig.elixirls.setup {
  cmd = { DATA_PATH.."/mason/bin/elixir-ls" },
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.sumneko_lua.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
