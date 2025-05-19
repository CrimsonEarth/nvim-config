-- VSCode Remaps and Methods
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

local function notify(cmd)
    return string.format("<cmd>call VSCodeNotify('%s')<CR>", cmd)
end

local function v_notify(cmd)
    return string.format("<cmd>call VSCodeNotify('%s')<CR>", cmd)
end

-- search/find related keymaps
keymap("n", "<leader>pf", notify 'workbench.action.quickOpen', opts) -- ripgrep equiv
keymap("n", "<leader>pv", notify 'workbench.view.explorer', opts) -- ripgrep equiv
keymap('n', '<Leader>pc', notify 'workbench.action.showCommands', opts) -- find commands
keymap('n', '<Leader>ps', notify 'workbench.action.findInFiles', opts) -- find commands

-- VISUAL MODE keymaps

-- lsp keymaps
keymap('v', '<Leader>lf', v_notify 'editor.action.formatSelection', opts)
keymap('v', '<Leader>la', v_notify 'editor.action.quickFix', opts)
keymap('v', '<Leader>lr', v_notify 'editor.action.refactor', opts)
keymap('v', '<Leader>pc', v_notify 'workbench.action.showCommands', opts)


