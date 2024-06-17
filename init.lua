-- Enable system clipboard
vim.o.clipboard = "unnamedplus"

-- Set number of lines to show above and below the cursor
vim.o.scrolloff = 8

-- Show line numbers
vim.wo.number = true

-- Set Ignore Case
vim.o.ignorecase = true
vim.o.smartcase = true

-- Set leader key to <space>
vim.g.mapleader = " "

-- Add Lazy.Nvim package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load Lazy.nvim 
require('lazy').setup({
  -- undotree plugin
  {
    'mbbill/undotree',
    config = function()
      -- Optionally set up any configuration you need
      vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true, silent = true })
    end,
  },
  -- More plugins
})

-- Load vim-plug
vim.cmd [[
call plug#begin('~/.local/share/nvim/plugged')

" GitHub Copilot plugin
Plug 'github/copilot.vim'

call plug#end()
]]
