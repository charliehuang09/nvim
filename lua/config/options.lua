local opt = vim.opt

vim.cmd.colorscheme "catppuccin"

vim.diagnostic.config({
  virtual_text = true,
})

opt.relativenumber = true
opt.number = true

opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = true

opt.clipboard:append("unnamedplus") -- use system clipboard

opt.updatetime = 40

vim.opt.hidden = false

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
