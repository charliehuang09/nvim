vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>a", "<cmd>buffer #<CR>", { desc = "Go to last visited buffer" })

-- keymap.set('v', 'J', "<cmd>move '>+1<CR>gv=gv", { noremap = true, desc = "Move line down one" })
-- keymap.set('v', 'K', "<cmd>move '<-2<CR>gv=gv", { noremap = true, desc = "Move line up one" })

-- keymap.set("n", "<ENTER>", "zo", { desc = "Expand fold" })
-- keymap.set("n", "<TAB>", "zc", { desc = "Close Fold" })

keymap.set('v', '<', "<gv", { noremap = true, desc = "Better indentation" })
keymap.set('v', '>', ">gv", { noremap = true, desc = "Better indentation" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

keymap.set('n', 'n', 'nzzzv', {})
keymap.set('n', 'N', 'Nzzzv', {})
keymap.set('n', '<C-d>', '<C-d>zz', {})
keymap.set('n', '<C-u>', '<C-u>zz', {})

keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split horizontally" })
keymap.set("n", "<leader>w=", "<C-w>=", { desc = "Make splits equal" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close split" })
keymap.set("n", "<leader>w_", "<C-w>_", { desc = "Fullscreens split horizontally" })
keymap.set("n", "<leader>w|", "<C-w>|", { desc = "Fullscreens split vertically" })

keymap.set("n", "<leader>tc", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to preious tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

keymap.set("n", "<leader>bx", "<cmd>bd<CR>", { desc = "Delete current buffer" })
keymap.set("n", "<leader>bn", "<cmd>bn<CR>", { desc = "Go to the next buffer" })
keymap.set("n", "<leader>bp", "<cmd>bn<CR>", { desc = "Go to the previous buffer" })
keymap.set("n", "<leader>bf", "<cmd>bf<CR>", { desc = "Go to the first buffer" })
keymap.set("n", "<leader>bl", "<cmd>bl<CR>", { desc = "Go to the last buffer" })
