-- This is where you custom modules and plugins goes.
-- See the wiki for a guide on how to extend NvChad

local hooks = require "core.hooks"
local plugin_status = require("core.utils").load_config().plugins.plugin_status
--require('dump')
--print(dump(plugin_status))

hooks.add("install_plugins", function(use)
   use {
      "akinsho/toggleterm.nvim",
      disable = not plugin_status.toggleterm,
      event = "BufRead",
      config = function()
         require "custom.plugins.toggleterm"
      end,
   }
   use {
      "ggandor/lightspeed.nvim",
      disable = not plugin_status.lightspeed,
      event = "BufRead",
      config = function()
         require "custom.plugins.lightspeed"
      end,
   }
   use {
      "oberblastmeister/termwrapper.nvim",
      disable = not plugin_status.termwrapper,
      event = "BufRead",
      config = function()
         require "custom.plugins.termwrapper"
      end,
   }
end)
--hooks.add("setup_mappings", function(map)
   -- map("n", "<C-x>", "<CMD>Ttoggle<CR>", opt) -- example to delete the buffer
   -- map("t", "<C-x>", "<C-\\><C-n><CMD>Ttoggle<CR>", opt) -- example to delete the buffer
--end)

-- use {
--   "numToStr/FTerm.nvim",
--   disable = not plugin_status.fterm,
--   event = "BufRead",
--   config = function()
--     require("plugins.configs.fterm")
--   end,
-- }
-- use {
--     "tpope/vim-fugitive",
--     disable = not plugin_status.vim_fugitive,
--     cmd = {
--        "Git",
--        "Gdiff",
--        "Gdiffsplit",
--        "Gvdiffsplit",
--        "Gwrite",
--        "Gw",
--     },
--     setup = function()
--        require("core.mappings").vim_fugitive()
--     end,
-- }

-- NOTE: To use this, make a copy with `cp example_init.lua init.lua`

--------------------------------------------------------------------

-- To modify packaged plugin configs, use the overrides functionality
-- if the override does not exist in the plugin config, make or request a PR,
-- or you can override the whole plugin config with 'chadrc' -> M.plugins.default_plugin_config_replace{}
-- this will run your config instead of the NvChad config for the given plugin

-- hooks.override("lsp", "publish_diagnostics", function(current)
--   current.virtual_text = false;
--   return current;
-- end)

-- To add new mappings, use the "setup_mappings" hook,
-- you can set one or many mappings
-- example below:

-- hooks.add("setup_mappings", function(map)
--    map("n", "<leader>cc", "gg0vG$d", opt) -- example to delete the buffer
--    .... many more mappings ....
-- end)

-- To add new plugins, use the "install_plugin" hook,
-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event' field)
-- see: https://github.com/wbthomason/packer.nvim
-- examples below:

-- alternatively, put this in a sub-folder like "lua/custom/plugins/mkdir"
-- then source it with

-- require "custom.plugins.mkdir"
