local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- lspservers with default config

   local servers = { "lua", "pyright" }

   for _, lsp in ipairs(servers) do
      if lsp ~= "lua" then
         lspconfig[lsp].setup {
            on_attach = attach,
            capabilities = capabilities,
            -- root_dir = vim.loop.cwd,
            flags = {
               debounce_text_changes = 150,
            },
         }
      elseif lsp == "lua" then
         require("custom.plugins.lsp_configs.sumneko").setup_luaLsp()
      end
   end
end

return M
