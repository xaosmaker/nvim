return {
	{

		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"vue_ls",
				"gopls",
				"ts_ls",
				"vtsls",
			},
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			--dont touch lsp config and dont add it as dep in mason-auto-install
			-- break the config and the lsp not working
			"neovim/nvim-lspconfig",
		},
	},
	{
		{
			"owallb/mason-auto-install.nvim",
			dependencies = {
				"williamboman/mason.nvim",
			},
			opts = {
				packages = {
					"stylua",
					"prettierd",
					"biome",
				},
			},
		},
	},
}
