-- remappings

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

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
