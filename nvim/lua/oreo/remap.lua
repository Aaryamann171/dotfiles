vim.g.mapleader = " "
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', "<leader>fc", ":LspZeroFormat<CR>", { silent = true })
