return {
  on_attach = function(client)
    local existing_capabilities = client.server_capabilities
    if vim.bo.filetype == 'vue' then
      existing_capabilities.semanticTokensProvider.full = false
    else
      existing_capabilities.semanticTokensProvider.full = true
    end
  end
}
