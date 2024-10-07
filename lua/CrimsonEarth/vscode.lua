-- VSCode Remaps and Methods

-- Telescope.find_files replacement
vim.keymap.set('n', '<leader>pf', function()
  vim.fn.VSCodeNotify('workbench.action.findInFiles')
end, { noremap = true, silent = true })

-- Telescope.git_files replacement

-- Grep replacement

