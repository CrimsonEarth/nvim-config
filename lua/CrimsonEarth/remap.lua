-- remappings
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- setting up alternate esc key
vim.keymap.set("i", "jk", "<Esc>")

-- Define options for key mappings
local opts = { noremap = true, silent = true }

-- Navigate splits using Ctrl + h/j/k/l in Normal mode
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', opts)
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', opts)
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', opts)

-- Navigate splits using Ctrl + h/j/k/l in Visual mode
vim.api.nvim_set_keymap('v', '<C-h>', '<C-w>h', opts)
vim.api.nvim_set_keymap('v', '<C-j>', '<C-w>j', opts)
vim.api.nvim_set_keymap('v', '<C-k>', '<C-w>k', opts)
vim.api.nvim_set_keymap('v', '<C-l>', '<C-w>l', opts)

-- Navigate splits using Ctrl + h/j/k/l in Terminal mode
vim.api.nvim_set_keymap('t', '<C-h>', [[<C-\><C-n><C-w>h]], opts)
vim.api.nvim_set_keymap('t', '<C-j>', [[<C-\><C-n><C-w>j]], opts)
vim.api.nvim_set_keymap('t', '<C-k>', [[<C-\><C-n><C-w>k]], opts)
vim.api.nvim_set_keymap('t', '<C-l>', [[<C-\><C-n><C-w>l]], opts)

-- "adjustments"

-- Marks
vim.keymap.set('n', '<leader>m', ':marks<CR>', { noremap = true, silent = true } )
-- only show the UserDefined Marks (a-zA-Z)
function UserMarks()
    local marks = ''
  for i = string.byte('a'), string.byte('z') do
    marks = marks .. string.char(i)
  end
  for i = string.byte('A'), string.byte('Z') do
    marks = marks .. string.char(i)
  end
  vim.cmd('marks ' .. marks)
end

vim.keymap.set('n', '<leader>my', function()
    UserMarks()
end, opts)

vim.keymap.set('n', '<leader>ss', function ()
    print("Hello World")
end, opts)

-- Registers
vim.keymap.set('n', '<leader>r', ':registers<CR>', { noremap = true, silent = true })

-- only show the User Defined Registers (a-zA-Z)
function UserRegisters()
    local regs = ''
  for i = string.byte('a'), string.byte('z') do
    regs = regs .. string.char(i)
  end
  for i = string.byte('A'), string.byte('Z') do
    regs = regs .. string.char(i)
  end
  vim.cmd('registers ' .. regs)
end

vim.keymap.set('n', '<leader>ry', function()
    UserRegisters()
end, { noremap = true, silent = true })


