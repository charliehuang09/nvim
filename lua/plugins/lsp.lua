return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  -- LSP configurations
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup {}
      lspconfig.clangd.setup {}
      lspconfig.pyright.setup {}
      lspconfig.ruff.setup {}
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "clangd", "pyright" },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    version = false, -- last release is way too old
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/vim-vsnip",
      "L3MON4D3/LuaSnip",
    },
  }

}
