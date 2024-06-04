return {
	{ "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.6', -- fuzzy search
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{ "rose-pine/neovim", name = "rose-pine" }, -- Theme
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}, -- LSP
	{ 'theprimeagen/harpoon' }, -- file bookmarks
	{ 'mbbill/undotree' }, -- undo changes
	{ 'tpope/vim-fugitive' }, -- git wrapper


	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'}, -- LSP
	{'neovim/nvim-lspconfig'}, -- LSP
	{'hrsh7th/cmp-nvim-lsp'}, -- LSP
	{'hrsh7th/cmp-buffer'}, -- LSP
	{'hrsh7th/cmp-path'}, -- LSP
	{'hrsh7th/cmp-cmdline'}, -- LSP
	{'hrsh7th/nvim-cmp'}, -- LSP
	{'L3MON4D3/LuaSnip'}, -- LSP
	{ "williamboman/mason.nvim" }, -- LSP installer
	{ "williamboman/mason-lspconfig.nvim" }, -- LSP installer
}
