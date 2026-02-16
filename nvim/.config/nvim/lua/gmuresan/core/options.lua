local opt = vim.opt -- alias

-- opt.relativenumber = true -- relative line numbers
-- opt.number = true -- absolute line number ohn current line

opt.tabstop = 2 -- number of spaces that a <Tab> in the file counts for
opt.shiftwidth = 2 -- number of spaces to use for each step of (auto)indent
opt.expandtab = true -- convert tabs to spaces
opt.autoindent = true -- copy indent from current line when starting a new line
opt.smarttab = true -- insert spaces when pressing <Tab> in insert mode

opt.wrap = true -- don't wrap lines
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- override ignorecase if search pattern contains upper case

opt.cursorline = true -- highlight the current line

opt.termguicolors = true -- enable 24-bit RGB colors
opt.signcolumn = "yes" -- always show the sign column

opt.backspace = "indent,eol,start" -- allow backspacing over everything in insert mode

opt.clipboard:append("unnamedplus") -- use system clipboard

opt.splitright = false -- keep window on left in focus
opt.splitbelow = false -- keep window on top in focus

opt.swapfile = false -- disable swap file
