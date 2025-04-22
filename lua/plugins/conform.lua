return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft.java = { "google_java_format" }

    opts.formatters = vim.tbl_deep_extend("force", opts.formatters or {}, {
      google_java_format = {
        command = "google-java-format",
        args = { "-i", "$FILENAME" },
        stdin = false,
      },
    })
  end,
}
