return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  -- LSP configurations
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- local lspconfig = require("lspconfig")
      -- local lspconfig = vim.lsp.config()

      vim.lsp.config("clangd", {
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--completion-style=detailed",
          "--header-insertion=never",
        },
        init_options = {
          clangdFileStatus = true,
        },
      })


      vim.lsp.config("lua_ls", {})
      vim.lsp.config("ruff", {})
      vim.lsp.config("jdtls", {})
      vim.lsp.enable({
      "clangd",
      "lua_ls",
      "ruff",
      "jdtls",
    })
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls" },
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
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    'rust-lang/rust.vim',
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  }

}
