-- GENERAL --

vim.opt.number = true
vim.opt.showmatch = true
vim.wo.relativenumber = true
vim.opt.termguicolors = true
vim.o.cursorline = true
vim.opt.list = true
vim.opt.listchars = {
  tab = '→ ',
  trail = '·',
  extends = '>',
  precedes = '<',
  space = '·'
}

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true


vim.o.swapfile = false
vim.opt.clipboard = 'unnamedplus' --use system clipboard
