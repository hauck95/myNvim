local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

--Telescope
vim.keymap.set('n', '<leader>ff', '<Cmd>Telescope find_files <CR>', { desc = 'Find files with Telescope' })
vim.keymap.set('n', '<leader>fo', '<Cmd>Telescope oldfiles<CR>', { desc = 'Find files with Telescope' })

--Oil
vim.keymap.set('n', '<leader>e', ':Oil<return>')

--lsp
vim.keymap.set('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>')

vim.keymap.set('n', '<leader>xx', function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { silent = true, noremap = true })
