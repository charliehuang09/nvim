return {
  {
    "nvim-neotest/nvim-nio"
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependancies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio"
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup({
        controls = {
          element = "repl",
          enabled = true,
          icons = {
            disconnect = "",
            pause = "",
            play = "",
            run_last = "",
            step_back = "",
            step_into = "",
            step_out = "",
            step_over = "",
            terminate = ""
          }
        },
        element_mappings = {},
        expand_lines = true,
        floating = {
          border = "single",
          mappings = {
            close = { "q", "<Esc>" }
          }
        },
        force_buffers = true,
        icons = {
          collapsed = "",
          current_frame = "",
          expanded = ""
        },
        layouts = { {
          elements = {
            -- {
            --   id = "scopes",
            --   size = 0.25
            -- },
            {
              id = "breakpoints",
              size = 0.25
            },
            {
              id = "stacks",
              size = 0.5
            },
            -- {
            --   id = "watches",
            --   size = 0.25
            -- }
          },
          position = "left",
          size = 40
        },
          {
            elements = {
              {
                id = "scopes",
                size = 1.0
              },
              -- {
              --   id = "console",
              --   size = 0.5
              -- }
            },
            position = "bottom",
            size = 10
          }
        },
        mappings = {
          edit = "e",
          expand = { "<CR>", "<2-LeftMouse>" },
          open = "o",
          remove = "d",
          repl = "r",
          toggle = "t"
        },
        render = {
          indent = 1,
          max_value_lines = 100
        }
      });
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
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependancies = {
      "mason-org/mason.nvim",
      "mfussenegger/nvim-dap"
    },
    opts = {
      handlers = {},
    },
  },
  {
    "mfussenegger/nvim-dap",
  },

}
