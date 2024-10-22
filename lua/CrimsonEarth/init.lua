local is_vscode = vim.fn.exists('g:vscode') == 1

require("CrimsonEarth.remap");

-- if not using vscode, go ahead and load lazy
if not is_vscode then
    require("CrimsonEarth.lazy_init");
end

-- Windows Configuration for NetRW
if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then
  -- Configure copy command
  vim.g.netrw_localcopycmd = 'cmd.exe'
  vim.g.netrw_localcopyopt = '/c copy /y'

  -- Configure move command
  vim.g.netrw_localmovecmd = 'cmd.exe'
  vim.g.netrw_localmoveopt = '/c move /y'

  -- Configure delete command
  vim.g.netrw_localrmcmd = 'cmd.exe'
  vim.g.netrw_localrmopt = '/c del /f /q'

  -- Configure mkdir command
  vim.g.netrw_localmkdir = 'cmd.exe'
  vim.g.netrw_localmkdiropt = '/c mkdir'

  -- Configure rmdir command
  vim.g.netrw_localrmdir = 'cmd.exe'
  vim.g.netrw_localrmdiropt = '/c rmdir /s /q'
end
