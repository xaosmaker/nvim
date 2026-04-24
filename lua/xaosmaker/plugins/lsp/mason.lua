return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				-- "vue_ls",
				"clangd",
				"gopls",
				"ts_ls",
				"pylsp",
				-- "vtsls",
				"bashls",
				"cssls",
				"docker_compose_language_service",
				"docker_language_server",
				"dockerls",
				"eslint",
				"html",
				"jsonls",
				"lua_ls",
				"yamlls",
				"nginx_language_server",
				-- "sqlls",
				"tailwindcss",
				"emmet_ls",
				-- "omnisharp",
				"csharp_ls",
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
					"nginx-config-formatter",
					"biome",

					-- debugers
					"go-debug-adapter",
					"netcoredbg",
				},
			},
		},
	},
}
