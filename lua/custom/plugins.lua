local plugins = {
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  {
    "nvim-neotest/nvim-nio",
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("core.utils").load_mappings("dap_python")
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    ft = { "python", "c++" },
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "black",
        "debugpy",
        "mypy",
        "ruff",
        "pyright",
      },
    },
    {
      "nvim-java/nvim-java",
      lazy = false,
      dependencies = {
        "nvim-java/lua-async-await",
        "nvim-java/nvim-java-core",
        "nvim-java/nvim-java-test",
        "nvim-java/nvim-java-dap",
        "MunifTanjim/nui.nvim",
        "neovim/nvim-lspconfig",
        "mfussenegger/nvim-dap",
        {
          "williamboman/mason.nvim",
          opts = {
            registries = {
              "github:nvim-java/mason-registry",
              "github:mason-org/mason-registry",
            },
          },
        },
      },
      config = function()
        require("java").setup {}
        require("lspconfig").jdtls.setup {
          on_attach = require("plugins.configs.lspconfig").on_attach,
          capabilities = require("plugins.configs.lspconfig").capabilities,
          filetypes = { "java" },
        }
      end,
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "alexander-born/cmp-bazel" },
    opts = function(_, opts)
      opts.sources = require("cmp").config.sources(vim.list_extend(opts.sources, { { name = "bazel" } }))
    end,
  },
  { 'alexander-born/bazel.nvim', dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim' } },
}
return plugins
