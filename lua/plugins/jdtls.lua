return {
	"mfussenegger/nvim-jdtls",
	options = {
		root_dir = vim.fs.root(0, { "gradlew", ".git", "mvnw", vim.fn.getcwd() }),
	},
	config = function(_, opts)
		-- Start or attach JDTLS with your options
		-- -- get the color of functions from the colorscheme
		-- local func_color = vim.api.nvim_get_hl(0, { name = "functions" }).fg
		-- local color = vim.api.nvim_get_hl(0, { name = "Function" }).fg
		--
		-- vim.api.nvim_set_hl(0, "@keyword.java", { fg = func_color })
		-- vim.api.nvim_set_hl(0, "@keyword.modifier.java", { fg = func_color })
		-- vim.api.nvim_set_hl(0, "@type.java", { fg = func_color })

		-- 💜 Highlight overrides (make Java keywords purple)
		vim.api.nvim_set_hl(0, "@keyword.java", { fg = "#C678DD", bold = true })
		vim.api.nvim_set_hl(0, "@keyword.modifier.java", { fg = "#C678DD", bold = true })
		vim.api.nvim_set_hl(0, "@type.java", { fg = "#C678DD", bold = true })
		-- (If you ever re-enable semantic highlighting)
		vim.api.nvim_set_hl(0, "@lsp.type.keyword.java", { fg = "#C678DD", bold = true })
		vim.api.nvim_set_hl(0, "@lsp.type.modifier.java", { fg = "#C678DD", bold = true })
	end,
}
