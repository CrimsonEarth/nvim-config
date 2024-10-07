require("CrimsonEarth")

-- Enable system clipboard
vim.o.clipboard = "unnamedplus"

-- Set number of lines to show above and below the cursor
vim.opt.scrolloff = 8

-- Set to use tabs instead of spaces
vim.opt.expandtab = false

-- Show line numbers
vim.wo.number = true

-- Set Ignore Case
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Primeagen copy
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.expand("~") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.updatetime = 50
