local is_vscode = vim.fn.exists('g:vscode') == 1

require("CrimsonEarth.remap");

-- if not using vscode, go ahead and load lazy
if not is_vscode then
    require("CrimsonEarth.lazy_init");
end

