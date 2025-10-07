return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		-- NOTE: The log_level is in `opts.opts`
		strategies = {
			chat = {
				adapter = "copilot",
				model = "gpt-4.1",
			},
		},
		-- adapters = {
		-- 	openai = function()
		-- 		return require("codecompanion.adapters").extend("openai", {
		-- 			env = {
		--
		-- 				api_key = os.getenv("OPENAI_API_KEY"),
		-- 			},
		-- 		})
		-- 	end,
		-- },

		opts = {
			log_level = "DEBUG", -- or "TRACE"
		},
	},
}
