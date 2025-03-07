return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    opts = {},
    config = function()
      local harpoon = require "harpoon"

      harpoon:setup({
        global_settings = {
          -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
          save_on_toggle = false,

          -- saves the harpoon file upon every change. disabling is unrecommended.
          save_on_change = true,

          -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
          enter_on_sendcmd = false,

          -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
          tmux_autoclose_windows = false,

          -- filetypes that you want to prevent from adding to the harpoon list menu.
          excluded_filetypes = { "harpoon" },

          -- set marks specific to each git branch inside git repository
          mark_branch = false,

          -- enable tabline with harpoon marks
          tabline = false,

          tabline_prefix = "   ",
          tabline_suffix = "   ",
        },
        menu = {
          width = vim.api.nvim_win_get_width(0) - 4,
        }
      })

      local keymap = vim.keymap -- for conciseness

      keymap.set("n", "<leader>h", function() harpoon:list():add() end, { desc = "Add current buffer to harpoon list" })
      keymap.set("n", "<leader>m", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
        { desc = "Show harpoon list" })

      keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Go to first mark in harpoon list" })
      keymap.set("n", "<leader>2", function() harpoon:list():select(2) end,
        { desc = "Go to second mark in harpoon list" })
      keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Go to third mark in harpoon list" })
      keymap.set("n", "<leader>4", function() harpoon:list():select(4) end,
        { desc = "Go to fourth mark in harpoon list" })
      keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Go to fifth mark in harpoon list" })
      keymap.set("n", "<leader>6", function() harpoon:list():select(6) end, { desc = "Go to sixth mark in harpoon list" })
      keymap.set("n", "<leader>7", function() harpoon:list():select(7) end,
        { desc = "Go to seventh mark in harpoon list" })
      keymap.set("n", "<leader>8", function() harpoon:list():select(8) end, { desc = "Go to eight mark in harpoon list" })
      keymap.set("n", "<leader>9", function() harpoon:list():select(9) end, { desc = "Go to ninth mark in harpoon list" })

      -- Toggle previous & next buffers stored within Harpoon list
      keymap.set("n", "<leader>p", function() harpoon:list():prev() end, { desc = "Go to previous mark in harpoon list" })
      keymap.set("n", "<leader>n", function() harpoon:list():next() end, { desc = "Go to next mark in harpoon list" })

      vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=#63698c')
      vim.cmd('highlight! HarpoonActive guibg=NONE guifg=white')
      vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7')
      vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7')
      vim.cmd('highlight! TabLineFill guibg=NONE guifg=white')
    end
  }
}
