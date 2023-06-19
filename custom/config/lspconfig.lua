local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require"lspconfig"

lspconfig.tsserver.setup({
  on_attach=on_attach,
  capabilities=capabilities,
  filetypes={ "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  root_dir= lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")
})

lspconfig.docker_compose_language_service.setup({
  on_attach=on_attach,
  capabilities=capabilities,
  filetypes={ "yaml" },
  root_dir= lspconfig.util.root_pattern("docker-compose.yaml")
})

