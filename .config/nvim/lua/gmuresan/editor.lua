-- Set the number of spaces that a <Tab> counts for
vim.opt.tabstop = 4

-- Set the number of spaces to use for each step of (auto)indent
vim.opt.shiftwidth = 4

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Smart tab behavior: <Tab> inserts `shiftwidth` spaces when at the start of a line
vim.opt.smarttab = true

-- Enable automatic indentation
vim.opt.autoindent = true

-- Copy indent from the current line when starting a new line
vim.opt.copyindent = true

-- Keep the indent structure
vim.opt.preserveindent = true

-- Show line numbers
vim.opt.number = true

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
