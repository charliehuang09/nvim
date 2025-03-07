return {
  "nvim-lua/plenary.nvim",
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<a-h>",  "<cmd>TmuxNavigateLeft<cr>" },
      { "<a-j>",  "<cmd>TmuxNavigateDown<cr>" },
      { "<a-k>",  "<cmd>TmuxNavigateUp<cr>" },
      { "<a-l>",  "<cmd>TmuxNavigateRight<cr>" },
      { "<a-\\>", "<cmd>TmuxNavigatePrevious<cr>" },
    },
  }
}
