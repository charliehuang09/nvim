return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("catppuccin").setup {
        integrations = {
          cmp = true,
          gitsigns = false,
          nvimtree = false,
          treesitter = true,
          notify = false,
          mini = {
            enabled = false,
            indentscope_color = "",
          },
        }
      }
      vim.cmd([[colorscheme catppuccin]])
    end
  }
}
