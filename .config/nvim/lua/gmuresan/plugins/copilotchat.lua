return {
	"CopilotC-Nvim/CopilotChat.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim", branch = "master" },
		{ "zbirenbaum/copilot.lua" },
	},
	build = "make tiktoken",
	opts = {},
	keys = {
		{ "<leader>zc", ":CopilotChat<CR>", mode = "n", desc = "Copilot Chat" },
		{ "<leader>ze", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain Code" },
		{ "<leader>zr", ":CopilotChatReview<CR>", mode = "v", desc = "Review Code" },
		{ "<leader>zf", ":CopilotChatFix<CR>", mode = "v", desc = "Fix Code Issues" },
		{ "<leader>zo", ":CopilotChatOptimize<CR>", mode = "v", desc = "Optimize Code" },
		{ "<leader>zd", ":CopilotChatDocs<CR>", mode = "v", desc = "Generate Docs" },
		{ "<leader>zt", ":CopilotChatTests<CR>", mode = "v", desc = "Generate Tests" },
		{ "<leader>zm", ":CopilotChatCommit<CR>", mode = "v", desc = "Generate Commit Message" },
	},
}
