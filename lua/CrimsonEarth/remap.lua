-- remappings
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

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
-- only show the UserDefined Marks (a-zA-Z)
vim.api.nvim_create_user_command('UserMarks', function()
  local marks = ''
  for i = string.byte('a'), string.byte('z') do
    marks = marks .. string.char(i)
  end
  for i = string.byte('A'), string.byte('Z') do
    marks = marks .. string.char(i)
  end
  vim.cmd('marks ' .. marks)
end, {})
