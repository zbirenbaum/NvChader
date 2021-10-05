local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- lspservers with default config

   local servers = { "lua", "pyright" }

   for _, lsp in ipairs(servers) do
    if lsp ~= "lua" then
      require("custom.plugins.lsp_configs." .. lsp)
    elseif lsp == "lua" then
      require("custom.plugins.lsp_configs.sumneko").setup_luaLsp()
    end
  end
end
return M
