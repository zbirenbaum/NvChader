local M = {}
--coq = require("coq")
local util = require "lspconfig/util"

M.setup = function(attach, capabilities)
   require("lspconfig").pyright.setup {
      root_dir = util.root_pattern(".git", "setup.py", "setup.cfg", "pyproject.toml", "requirements.txt"),
      flags = {
         debounce_text_changes = 150,
      },
      settings = {
         python = {
            analysis = {
               autoSearchPaths = false,
               useLibraryCodeForTypes = false,
               diagnosticMode = "openFilesOnly",
            },
         },
      },
   }
end

return M.setup()
