return {
	{ "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8", -- fuzzy search
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim", -- fuzzy search native bindings
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
	},
	{ "rose-pine/neovim", name = "rose-pine" }, -- Theme
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }, -- LSP
	{ "theprimeagen/harpoon" }, -- file bookmarks
	{ "mbbill/undotree" }, -- undo changes
	{ "tpope/vim-fugitive" }, -- git wrapper

	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" }, -- LSP config starting point
	{ "neovim/nvim-lspconfig" }, -- LSP
	{ "hrsh7th/cmp-nvim-lsp" }, -- LSP cmp = completion
	{ "hrsh7th/cmp-buffer" }, -- LSP
	{ "hrsh7th/cmp-path" }, -- LSP
	{ "hrsh7th/cmp-cmdline" }, -- LSP
	{ "hrsh7th/nvim-cmp" }, -- LSP
	{ "L3MON4D3/LuaSnip" }, -- LSP
	{ "williamboman/mason.nvim", dependencies = { "WhoIsSethDaniel/mason-tool-installer.nvim" } }, -- LSP installer
	{ "williamboman/mason-lspconfig.nvim" }, -- LSP installer

	{ "github/copilot.vim" }, -- copilot

	{ "stevearc/conform.nvim", event = { "BufReadPre", "BufNewFile" } }, --formatter
	{ "mfussenegger/nvim-lint", event = { "BufReadPre", "BufNewFile" } }, -- linter

	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				sort = {
					sorter = "case_sensitive",
				},
				view = {
					width = 30,
				},
				renderer = {
					group_empty = true,
				},
				filters = {
					dotfiles = true,
				},
			})
		end,
	}, -- file tree

	{ "yegappan/mru" }, -- most recently used files
}
