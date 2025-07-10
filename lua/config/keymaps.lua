local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("n", ";", ":", {})
keymap.set({ 'n', 'v' }, 'd', '"_d', { noremap = true })
keymap.set('n', 'dd', '"_dd', { noremap = true })

keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

keymap.set("n", "n", "nzzzv", {})
keymap.set("n", "N", "Nzzzv", {})

keymap.set("n", "<C-d>", "<C-d>zz", {})
keymap.set("n", "<C-u>", "<C-u>zz", {})

keymap.set("v", "<", "<gv", { noremap = true, desc = "Better indentation" })
keymap.set("v", ">", ">gv", { noremap = true, desc = "Better indentation" })

keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", { desc = "Reset hunk" })
keymap.set("n", "<leader>gs", ":Gitsigns stage_hunk<CR>", { desc = "Stage hunk" })
keymap.set("n", "<leader>gu", ":Gitsigns stage_hunk<CR>", { desc = "Stage hunk" })

keymap.set("n", "<leader>gR", ":Gitsigns reset_buffer<CR>", { desc = "Reset buffer" })
keymap.set("n", "<leader>gS", ":Gitsigns stage_buffer<CR>", { desc = "Stage buffer" })
keymap.set("n", "<leader>gu", ":Gitsigns stage_hunk<CR>", { desc = "Stage hunk" })

keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk_inline<CR>")

keymap.set("n", "<leader>gb", ":Gitsigns blame_line<CR>", { desc = "Blame line" })

keymap.set("n", "<leader>tc", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<TAB>", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<S-TAB>", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
keymap.set(
  "n",
  "<leader>tr",
  "<cmd>tabnew %<CR> <cmd>tabp<CR> <cmd>tabclose<CR>",
  { desc = "Open current buffer in new tab" }
)

vim.keymap.set("n", "<leader>rr", ":lua vim.lsp.buf.rename()<CR>")

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = true, silent = true })

vim.keymap.set('n', '<leader>db', "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line" })
vim.keymap.set('n', '<leader>dr', "<cmd> DapContinue <CR>", { desc = "Start/continue the debugger" })
vim.keymap.set('n', '<leader>dt', "<cmd> DapTerminate <CR>", { desc = "Stop the debugger" })
vim.keymap.set('n', '<C-b>', "<cmd> DapStepOver <CR>", { desc = "Step over" })
vim.keymap.set('n', '<C-n>', "<cmd> DapStepInto <CR>", { desc = "Step into" })
vim.keymap.set('n', '<C-m>', "<cmd> DapStepOut <CR>", { desc = "Step out" })

vim.keymap.set('n', '<C-Up>', '<C-w>k', { desc = "Window up" })
vim.keymap.set('n', '<C-Down>', '<C-w>j', { desc = "Window down" })
vim.keymap.set('n', '<C-Left>', '<C-w>h', { desc = "Window left" })
vim.keymap.set('n', '<C-Right>', '<C-w>l', { desc = "Window right" })

vim.keymap.set('n', '<leader>fmd', vim.lsp.buf.format)
