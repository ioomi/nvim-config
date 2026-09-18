vim.loader.enable()

require("core.config")

if not vim.g.vscode then
  require("core.autocmd")
  require("core.command")
end

require("core.lazy-init")
