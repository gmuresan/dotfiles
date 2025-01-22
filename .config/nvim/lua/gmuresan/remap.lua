vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Map Ctrl+S to save in insert mode
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>", { noremap = true, silent = false })

-- Map Ctrl+S to save in visual mode
vim.api.nvim_set_keymap("n", "<C-s>", "<Esc>:w<CR>", { noremap = true, silent = true })

-- Map Enter to insert a new line below in normal mode
vim.api.nvim_set_keymap("n", "<CR>", "o<Esc>", { noremap = true, silent = true })

-- Map Shift+Enter to insert a new line above in normal mode
vim.api.nvim_set_keymap("n", "<S-CR>", "O<Esc>", { noremap = true, silent = true })

-- Function to copy the relative file path of the current buffer to the clipboard
function copy_relative_file_path_to_clipboard()
	local file_path = vim.fn.expand("%:.")

	--local file_path = vim.fn.expand("%")
	vim.fn.setreg("+", file_path)
	print("Copied to clipboard: " .. file_path)
end

-- Map the 'cp' shortcut in normal mode to call the function
vim.api.nvim_set_keymap(
	"n",
	"cp",
	"<cmd>lua copy_relative_file_path_to_clipboard()<CR>",
	{ noremap = true, silent = true }
)
