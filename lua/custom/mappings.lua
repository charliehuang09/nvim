local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"},
    ["<leader>gp"] = {"<cmd> Gitsigns preview_hunk_inline <CR>"},
    ["<leader>gs"] = {"<cmd> Gitsigns stage_hunk <CR>"},
    ["<leader>gu"] = {"<cmd> Gitsigns undo_stage_hunk <CR>"},
    ["<leader>gr"] = {"<cmd> Gitsigns reset_hunk <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

return M
