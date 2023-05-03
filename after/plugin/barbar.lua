vim.api.nvim_set_keymap('n', '<leader>c', '<cmd>BufferClose<CR>', { noremap = true })
vim.api.nvim_set_keymap('i', '<leader>c', '<Esc><cmd>BufferClose<CR>', { noremap = true })
-- Next tab and previous tab.
vim.api.nvim_set_keymap('n', '<C-Left>', ':BufferPrevious<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-Right>', ':BufferNext<CR>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-Left>', '<Esc>:BufferPrevious<CR>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-Right>', '<Esc>:BufferNext<CR>', { noremap = true })
