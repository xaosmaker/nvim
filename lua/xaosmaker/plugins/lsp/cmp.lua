return {
	"hrsh7th/nvim-cmp",
	dependencies = {

		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		{
			"rafamadriz/friendly-snippets",
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load()
			end,
		},
	},
	config = function()
		local cmp = require("cmp")

		cmp.setup({
			-- Snippet engine (required)
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			-- Window appearance (optional)
			window = {
				-- completion = cmp.config.window.bordered(),
				-- documentation = cmp.config.window.bordered(),
			},

			-- Key mappings (required)
			mapping = cmp.mapping.preset.insert({
				["<C-Space>"] = cmp.mapping.complete(),
				["<TAB>"] = cmp.mapping.select_next_item(),
				["<S-TAB>"] = cmp.mapping.select_prev_item(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),

			-- Completion sources (required, in order of priority)
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "buffer" },
				-- { name = "cmdline" },
				{ name = "bufname" },
				{ name = "path" },
				{ name = "luasnip" },
			}),
		})
	end,
}
