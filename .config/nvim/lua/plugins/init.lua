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
	{
		"kelly-lin/telescope-ag", -- ag search
		dependencies = { "nvim-telescope/telescope.nvim" },
	},
	{ "stevearc/conform.nvim", event = { "BufReadPre", "BufNewFile" } }, --formatter
	{ "mfussenegger/nvim-lint", event = { "BufReadPre", "BufNewFile" } }, -- linter
	{
		"hedyhli/outline.nvim", -- show outline of file
		config = function()
			-- Example mapping to toggle outline
			vim.keymap.set("n", "<leader>o", "<cmd>Outline!<CR>", { desc = "Toggle Outline" })

			require("outline").setup({
				outline_window = {
					position = "right",
					width = 15,
				},
			})
		end,
	},

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
	{
		"yetone/avante.nvim",
		event = "VeryLazy",
		lazy = false,
		version = false, -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
		opts = {
			-- add any opts here
			-- for example
			provider = "openai",
			openai = {
				endpoint = "https://api.openai.com/v1",
				model = "gpt-4o", -- your desired model (or use gpt-4o, etc.)
				timeout = 30000, -- timeout in milliseconds
				temperature = 0, -- adjust if needed
				max_tokens = 4096,
			},
		},
		-- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
		build = "make",
		-- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
		dependencies = {
			"stevearc/dressing.nvim",
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			--- The below dependencies are optional,
			"echasnovski/mini.pick", -- for file_selector provider mini.pick
			"nvim-telescope/telescope.nvim", -- for file_selector provider telescope
			"hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
			"ibhagwan/fzf-lua", -- for file_selector provider fzf
			"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
			"zbirenbaum/copilot.lua", -- for providers='copilot'
			{
				-- support for image pasting
				"HakonHarnes/img-clip.nvim",
				event = "VeryLazy",
				opts = {
					-- recommended settings
					default = {
						embed_image_as_base64 = false,
						prompt_for_file_name = false,
						drag_and_drop = {
							insert_mode = true,
						},
						-- required for Windows users
						use_absolute_path = true,
					},
				},
			},
			{
				-- Make sure to set this up properly if you have lazy=true
				"MeanderingProgrammer/render-markdown.nvim",
				opts = {
					file_types = { "markdown", "Avante" },
				},
				ft = { "markdown", "Avante" },
			},
		},
	},
}
