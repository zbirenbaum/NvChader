local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- lspservers with default config

   local servers = { "lua", "pyright" }

   for _, lsp in ipairs(servers) do
<<<<<<< HEAD
    if lsp ~= "lua" then
      require("custom.plugins.lsp_configs." .. lsp)
      -- lspconfig[lsp].setup {
      --    on_attach = attach,
      --    capabilities = capabilities,
      --    root_dir = vim.loop.cwd,
      --    flags = {
      --       debounce_text_changes = 150,
      --    },
      -- }
    elseif lsp == "lua" then
      require("custom.plugins.lsp_configs.sumneko").setup_luaLsp()
    end
  end
=======
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
>>>>>>> 5b0d2f6b33f7bdb1879cf06b43f4795df3014162
end

return M
