return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        java = { "google_java_format" },
        cpp = { "clang-format" }
        -- Conform will run multiple formatters sequentially
        -- You can customize some of the format options for the filetype (:help conform.format)
        -- Conform will run the first available formatter
      },
      formatters = {
        google_java_format = {
          command = "google-java-format",
          args = { "-r", "$FILENAME" },
          stdin = false,
        }
      }
    })
  end
}
