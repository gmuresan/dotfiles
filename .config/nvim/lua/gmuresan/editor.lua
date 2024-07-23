-- Set the number of spaces that a <Tab> counts for
vim.opt.tabstop = 2

vim.opt.expandtab = true

-- Set the number of spaces to use for each step of (auto)indent
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

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

-- Start Lint/Error message config
vim.diagnostic.config({
	virtual_text = true, -- Turn off inline diagnostics
	float = {
		border = "rounded",
	},
})

-- Use this if you want it to automatically show all diagnostics on the
-- current line in a floating window. Personally, I find this a bit
-- distracting and prefer to manually trigger it (see below). The
-- CursorHold event happens when after `updatetime` milliseconds. The
-- default is 4000 which is much too long
vim.cmd("autocmd CursorHold * lua vim.diagnostic.open_float()")
vim.o.updatetime = 1000

-- Show all diagnostics on current line in floating window
vim.api.nvim_set_keymap("n", "<Leader>d", ":lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
-- Go to next diagnostic (if there are multiple on the same line, only shows
-- one at a time in the floating window)
vim.api.nvim_set_keymap("n", "<Leader>n", ":lua vim.diagnostic.goto_next()<CR>", { noremap = true, silent = true })
-- Go to prev diagnostic (if there are multiple on the same line, only shows
-- one at a time in the floating window)
vim.api.nvim_set_keymap("n", "<Leader>p", ":lua vim.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })
-- End of Lint/Error message config

vim.api.nvim_set_keymap("n", "\\d", "odebugger<Esc>", { noremap = true, silent = true })

-- Function to create directories if they do not exist
local function create_dirs()
	local filepath = vim.fn.expand("%:p:h")
	if not vim.fn.isdirectory(filepath) then
		os.execute("mkdir -p " .. filepath)
	end
end

-- Auto command to create directories before saving a file
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = create_dirs,
})
