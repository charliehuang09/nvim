return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    config = function()
      -- Function to perform flash jump and center the screen
      local function flash_jump_and_center()
        require("flash").jump()
        vim.cmd('normal! zz')
      end

      -- Define key mappings
      local keys = {
        { "s",     mode = { "n", "x", "o" }, function() flash_jump_and_center() end,              desc = "Flash" },
        { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
        { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
        { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
        { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
      }

      -- Set the key mappings
      for _, keymap in ipairs(keys) do
        vim.keymap.set(keymap.mode, keymap[1], keymap[2], { desc = keymap.desc })
      end
    end,
  }
}
