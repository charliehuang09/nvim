return {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  lazy = false,
  config = function()
    require("refactoring").setup()
    require("telescope").load_extension("refactoring")
    vim.keymap.set(
      { "n", "x" },
      "<leader>rr",
      function() require('refactoring').select_refactor() end
    )
  end,
}
