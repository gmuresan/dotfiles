return {
	"yegappan/mru", -- most recently used files
	config = function()
		vim.api.nvim_set_keymap("n", "\\m", ":MRU<CR>", { noremap = true, silent = true }) -- Map \m to :MRU
	end,
}
