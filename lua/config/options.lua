-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

vim.cmd("set path+=**")
vim.cmd("set wildmenu")
vim.cmd("set noswapfile")
vim.cmd("set noswapfile")

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search assumes you want case-sensitive

opt.hlsearch = false
opt.incsearch = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light of dark will be made dark
opt.signcolumn = "yes" -- show sign  column so that text doesn't shift

opt.scrolloff = 8
opt.isfname:append("@-@")

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line, or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.updatetime = 40

opt.colorcolumn = "180"
