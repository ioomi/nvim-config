local is_nixos = vim.uv.fs_stat("/etc/NIXOS") ~= nil
local is_vscode = vim.g.vscode ~= nil

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local result = vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })

  if vim.v.shell_error ~= 0 then
    error("Failed to install lazy.nvim:\n" .. result)
  end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins", cond = not is_vscode },
    { import = "vscode.plugins", cond = is_vscode },
  },
  install = { colorscheme = is_vscode and {} or { "gelato" } },
  checker = { enabled = not is_vscode, notify = false },
  rocks = { hererocks = not is_nixos }, -- Always use luarocks on NixOS
})

