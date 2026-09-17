vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)
vim.opt.cursorline = true
vim.opt.guicursor = {
  "n-v-sm:block",
  "i-ci-ve:ver25",
  "c:ver25",
  "r-cr-o:hor20",
  "t:block-blinkon500-blinkoff500-TermCursor",
}

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.gdefault = true -- Use global substitution by default

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.inccommand = "split"

vim.opt.scrolloff = 0

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

vim.opt.autoindent = true
-- `smartindent` treats a leading `#` as a C preprocessor directive and
-- forces it to column 0, which breaks indented comments in Python, shell,
-- YAML, and other filetypes that use `#` for comments.
vim.opt.smartindent = false

vim.opt.signcolumn = "yes"

-- obsidian.nvim
vim.opt.conceallevel = 2

vim.keymap.set("n", "gV", "`[v`]", { desc = "Select the last changed or yanked text" })

vim.keymap.set("n", "<M-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<M-j>", "<C-w>j", { desc = "Move to lower window" })
vim.keymap.set("n", "<M-k>", "<C-w>k", { desc = "Move to upper window" })
vim.keymap.set("n", "<M-l>", "<C-w>l", { desc = "Move to right window" })
