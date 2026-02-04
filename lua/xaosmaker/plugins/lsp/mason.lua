return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua_ls",
      "gopls",
      "vtsls",
      "vue_ls",
    },
  },
  dependencies = {
    {
      "williamboman/mason.nvim",
      opts = {},
    },
    "neovim/nvim-lspconfig",
  },
}
