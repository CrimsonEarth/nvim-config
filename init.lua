-- Enable system clipboard
vim.o.clipboard = "unnamedplus"

-- Set number of lines to show above and below the cursor
vim.o.scrolloff = 8

-- Set to use tabs instead of spaces
vim.opt.expandtab = false

-- Show line numbers
vim.wo.number = true

-- Set Ignore Case
vim.o.ignorecase = true
vim.o.smartcase = true

-- Set leader key to <space>
vim.g.mapleader = " "

-- -- Enable relative line numbers in NORMAL mode
-- vim.api.nvim_create_autocmd("InsertEnter", {
--     pattern = "*",
--     callback = function()
--         vim.wo.relativenumber = false
--     end,
-- })
-- 
-- vim.api.nvim_create_autocmd("InsertLeave", {
--     pattern = "*",
--     callback = function()
--         vim.wo.relativenumber = true
--     end,
-- })
-- 
-- -- Ensure relative line numbers are enabled initially
-- vim.wo.relativenumber = true

-- Begin vim-plug setup
vim.cmd([[
  call plug#begin('~/.config/nvim/plugged')

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  call plug#end() 
]])

-- -- Setup VSCode commands
-- -- Map Neovim folding commands to VSCode folding commands
-- -- Check if running in VSCode with the Neovim extension
-- -- NOTE: Macros do not work with this solution
-- if vim.g.vscode then
-- 	-- fzf using extension
-- 	vim.cmd([[
-- 	command! -nargs=0 F call VSCodeNotify('fzf-quick-open.runFzfFileProjectRoot')
-- 	]], false)
-- 
-- 	-- add :f abbreviation
-- 	vim.cmd('cnoreabbrev f F')
-- 
-- 	-- Map Neovim folding commands to VSCode folding commands
-- 	vim.api.nvim_set_keymap('n', 'zM', ':call VSCodeNotify("editor.foldAll")<CR>', { noremap = true, silent = true })
-- 	vim.api.nvim_set_keymap('n', 'zR', ':call VSCodeNotify("editor.unfoldAll")<CR>', { noremap = true, silent = true })
-- 	vim.api.nvim_set_keymap('n', 'zc', ':call VSCodeNotify("editor.fold")<CR>', { noremap = true, silent = true })
-- 	vim.api.nvim_set_keymap('n', 'zC', ':call VSCodeNotify("editor.foldRecursively")<CR>', { noremap = true, silent = true })
-- 	vim.api.nvim_set_keymap('n', 'zo', ':call VSCodeNotify("editor.unfold")<CR>', { noremap = true, silent = true })
-- 	vim.api.nvim_set_keymap('n', 'zO', ':call VSCodeNotify("editor.unfoldRecursively")<CR>', { noremap = true, silent = true })
-- 	vim.api.nvim_set_keymap('n', 'za', ':call VSCodeNotify("editor.toggleFold")<CR>', { noremap = true, silent = true })
-- 
-- 	-- Function to move the cursor without unfolding
-- 	function MoveCursor(direction)
-- 		local result
-- 		if vim.v.count == 0 and vim.fn.reg_recording() == '' and vim.fn.reg_executing() == '' then
-- 			result = 'g' .. direction
-- 		else
-- 			result = direction
-- 		end
-- 		--print("MoveCursor result: " .. result)
-- 		return result
-- 	end
-- 
-- 	-- Map j and k to move cursor and avoid unfolding
-- 	vim.keymap.set('n', 'k', function()
-- 		return MoveCursor('k')
-- 	end, { noremap = true, expr = true, silent = true })
-- 	vim.keymap.set('n', 'j', function()
-- 		return MoveCursor('j')
-- 	end, { noremap = true, expr = true, silent = true})
-- end
