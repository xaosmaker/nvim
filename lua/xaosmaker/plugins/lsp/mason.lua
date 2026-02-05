return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua_ls",
      "gopls",
      "ts_ls",
      "vtsls",
      "vue_ls",
      "tailwindcss",
      "eslint",
      "jsonls",
    },
  },
  dependencies = {
    {
      "williamboman/mason.nvim",
      opts = {},
    },
    {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      opts = {
        ensure_installed = {
          "prettierd",
          "biome",
        },
      },
    },
    "neovim/nvim-lspconfig",
  },
}
