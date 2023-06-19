local plugins={
  {
  "neovim/nvim-lspconfig",
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.config.lspconfig"
   end,
  },
  {
    "williamboman/mason.nvim",
    opts={
      ensure_installed={
        "typescript-language-server"
      }
    }
  }
}

return plugins
