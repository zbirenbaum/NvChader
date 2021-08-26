
local function map(mode, lhs, rhs, opts)
    local options = {noremap = true, silent = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

vim.cmd("silent! command PackerCompile lua require 'pluginList' require('packer').compile()")
vim.cmd("silent! command PackerInstall lua require 'pluginList' require('packer').install()")
vim.cmd("silent! command PackerStatus lua require 'pluginList' require('packer').status()")
vim.cmd("silent! command PackerSync lua require 'pluginList' require('packer').sync()")
vim.cmd("silent! command PackerUpdate lua require 'pluginList' require('packer').update()")

-- rem highlighting on esc
map("n", "<Esc>", ":noh<CR>", opt)

-- get out of terminal with jk
map("t", "jk", "<C-\\><C-n>", opt)

map("i", "jk", [[<ESC>]], opt)
map("i", "jj", [[<ESC>]], opt)
-- Keybinding
--local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- OPEN TERMINALS --
--autoenter terminal
--vim.cmd([[autocmd TermOpen * startinsert]])
map('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
map('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
map("n", "<C-l>", [[<Cmd>vnew term://zsh <CR>]], opt) -- over right
--map("n", "<C-x>", [[<Cmd> split term://zsh | resize 10 <CR>]], opt) --  bottt
--toggle termwrapper from normie and term mode
map("n", "<C-x>", [[<Cmd> Ttoggle <CR>]], opt) --  bottt
map("t", "<C-x>", [[<C-\><C-n> <Cmd> Ttoggle <CR>]], opt) --  bottt

map("n", "<C-t>t", [[<Cmd> tabnew | term <CR>]], opt) -- newtan
-- Map escape to exit and close terminal (broken pls fix)--
--map("t", "<Esc>", [[<C-\><C-n>:close<CR>]], opt)
--open nvimtree--
map("n", "<C-n>", ":NvimTreeToggle<CR>", opt)

-- COPY EVERYTHING in the file--
--map("n", "<C-a>", [[ <Cmd> %y+<CR>]], opt)

--vim.g.mapleader = " "

-- TabLine
map("n", "<S-t>", [[<Cmd>tabnew<CR>]], opt) -- new tab
map("n", "<S-x>", [[<Cmd>bdelete<CR>]], opt) -- close tab

-- move between tabs
map("n", "<TAB>", [[<Cmd>BufferLineCycleNext<CR>]], opt)
map("n", "<S-TAB>", [[<Cmd>BufferLineCyclePrev<CR>]], opt)
-- toggle numbers ---
map("n", "<Leader>n", [[ <Cmd> set nu!<CR>]], opt)

map("n", "<C-s>", [[ <Cmd> w <CR>]], opt) -- save

-- move with alt + hjkl
map("t", "<A-h>", [[<C-\><C-N><C-w>h]], opt)
map("t", "<A-j>", [[<C-\><C-N><C-w>j]], opt)
map("t", "<A-k>", [[<C-\><C-N><C-w>k]], opt)
map("t", "<A-l>", [[<C-\><C-N><C-w>l]], opt)

map("i", "<A-h>", [[<C-\><C-N><C-w>h]], opt)
map("i", "<A-j>", [[<C-\><C-N><C-w>j]], opt)
map("i", "<A-k>", [[<C-\><C-N><C-w>k]], opt)
map("i", "<A-l>", [[<C-\><C-N><C-w>l]], opt)

map("n", "<A-h>", [[<C-w>h]], opt)
map("n", "<A-j>", [[<C-w>j]], opt)
map("n", "<A-k>", [[<C-w>k]], opt)
map("n", "<A-l>", [[<C-w>l]], opt)
  --linting autocmd
  --vim.cmd([[autocmd InsertLeave * lua require('lint').try_lint()]])
--vim.cmd([[autocmd BufEnter * lua require('lint').try_lint()]])

--FROM NVCHAD--
map("n", "<Leader>fm", ":Neoformat<CR>", opt)

map("n", "<leader>/", ":CommentToggle<CR>", opt)
map("v", "<leader>/", ":CommentToggle<CR>", opt)


map("n", "<Leader>fw", ":Telescope live_grep<CR>", opt)
map("n", "<Leader>gt", ":Telescope git_status <CR>", opt)
map("n", "<Leader>cm", ":Telescope git_commits <CR>", opt)
map("n", "<Leader>ff", ":Telescope find_files <CR>", opt)
map("n", "<Leader>fp", ":Telescope media_files <CR>", opt)
map("n", "<Leader>fb", ":Telescope buffers<CR>", opt)
map("n", "<Leader>fh", ":Telescope help_tags<CR>", opt)
map("n", "<Leader>fo", ":Telescope oldfiles<CR>", opt)

map("n", "<Leader>gs", ":Git<CR>", opt)
map("n", "<Leader>gh", ":diffget //2<CR>", opt)
map("n", "<Leader>gl", ":diffget //3<CR>", opt)
map("n", "<Leader>gb", ":Git blame<CR>", opt)

--DAP--
--[[
map("n", "<Leader>cc", "<CMD>lua require'dap'.continue()<CR>")
map("n", "<Leader>co", "<CMD>lua require'dap'.step_over()<CR>")
map("n", "<Leader>cm", "<CMD>lua require'dap'.step_into()<CR>")
map("n", "<Leader>cu", "<CMD>lua require'dap'.step_out()<CR>")
map("n", "<Leader>b", "<CMD>lua require'dap'.toggle_breakpoint()<CR>")
map("n", "<Leader>B", "<CMD>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
map("n", "<Leader>lp", "<CMD>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message'))<CR>")
map("n", "<Leader>dr", "<CMD>lua require'dap'.set_repl.open()<CR>")
map("n", "<Leader>dl", "<CMD>lua require'dap'.run_last()<CR>")
map("n", "<Leader>dp", "<CMD>lua require('dapui').open()<CR>")
--]]
--require("dapui").close()
--require("dapui").toggle()
