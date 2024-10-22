-- remappings

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

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
end, { noremap = true, silent = true })

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


