vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "y", '"+y')
vim.keymap.set("v", "y", '"+y')
vim.keymap.set("n", "Y", '"+Y')

vim.keymap.set("n", "<leader>tt", ":TransparentToggle<Enter>")

vim.keymap.set("n", "zz", ":lua vim.lsp.buf.format()<Enter>")
