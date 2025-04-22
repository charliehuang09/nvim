return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/oil.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-telescope/telescope-ui-select.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local utils = require("telescope.utils")
    local builtin = require("telescope.builtin")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    local get_folder_path = function(path)
      local is_file = path:match("([^/]+)$") -- Extracts filename
      if is_file then
        return path:match("(.+)/[^/]+$") or "." -- Extracts directory
      end
      return path
    end

    local grep_file_in_current_directory = function()
      local dir = get_folder_path(vim.fn.expand("%"):gsub("oil://", ""))
      builtin.find_files({ cwd = dir })
    end

    local grep_file_content_in_current_directory = function()
      local dir = get_folder_path(vim.fn.expand("%"):gsub("oil://", ""))
      builtin.live_grep({ cwd = dir })
    end

    keymap.set("n", "<leader>ff", function()
      grep_file_in_current_directory()
    end, { desc = "Fuzzy find in current directory" })
    keymap.set("n", "<leader>fg", function()
      grep_file_content_in_current_directory()
    end, { desc = "Grep string in files" })

    keymap.set("n", "<leader>fa", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Find document symbols" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
    keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find files in buffers" })
  end,
}
