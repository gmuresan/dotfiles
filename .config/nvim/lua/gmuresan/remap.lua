vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Map Ctrl+S to save in insert mode
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = false })

-- Map Ctrl+S to save in visual mode
vim.api.nvim_set_keymap('n', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })

-- Map Enter to insert a new line below in normal mode
vim.api.nvim_set_keymap('n', '<CR>', 'o<Esc>', { noremap = true, silent = true })

-- Map Shift+Enter to insert a new line above in normal mode
vim.api.nvim_set_keymap('n', '<S-CR>', 'O<Esc>', { noremap = true, silent = true })
