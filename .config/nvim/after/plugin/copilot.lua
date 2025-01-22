-- Set the key mapping for accepting completions
vim.api.nvim_set_keymap('i', '<C-Enter>', 'copilot#Accept("<CR>")', { silent = true, expr = true })
