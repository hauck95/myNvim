local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

--Telescope
vim.keymap.set('n', '<leader>ff', '<Cmd>Telescope find_files <CR>', { desc = 'Find files with Telescope' })
vim.keymap.set('n', '<leader>fo', '<Cmd>Telescope oldfiles<CR>', { desc = 'Find files with Telescope' })
vim.keymap.set('n', '<ESC>', '<Cmd>noh<CR>')

--Oil
vim.keymap.set('n', '<leader>e', '<Cmd>Oil<CR>')

--lsp
vim.keymap.set('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>')

--Trouble
keymap('n', "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>")
