return {
	"folke/snacks.nvim",
	---@type snacks.Config
	opts = {
		picker = {
			-- your picker configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			ui_select = true,
			enabled = true,
		},
	},
  keys = {
    { "<leader>gB", function() Snacks.gitbrowse() end, desc = "Git Browse", mode = { "n", "v" } },
  },
}
