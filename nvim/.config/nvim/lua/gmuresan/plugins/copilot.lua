return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = {
				auto_trigger = true,
				keymap = {
					accept = "<C-Enter>",
				},
			},
		})

		vim.keymap.set("i", "<C-m>", function()
			require("copilot.suggestion").accept_word()
		end, { silent = true })
		vim.keymap.set("i", "<C-l>", function()
			require("copilot.suggestion").accept_line()
		end, { silent = true })
	end,
}
