vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_auto_close = 1

vim.keymap.set("n", "\\n", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
