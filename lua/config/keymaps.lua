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
