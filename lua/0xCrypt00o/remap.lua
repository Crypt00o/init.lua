


-- Switch to the next window.
vim.api.nvim_set_keymap('n', '<leader>w', ':wincmd w<CR>', { noremap = true })


-- Save & exit quick keys.
vim.api.nvim_set_keymap('i', '<C-s>', '<esc>:w!<CR>', { noremap = true }) -- Save files.
vim.api.nvim_set_keymap('n', '<C-s>', ':w!<CR>', { noremap = true })
vim.api.nvim_set_keymap('i', '<leader>sq', '<esc>:wq!<CR>', { noremap = true }) -- Save and exit.
vim.api.nvim_set_keymap('n', '<leader>sq', ':wq!<CR>', { noremap = true })
vim.api.nvim_set_keymap('i', '<leader>q', '<esc>:q!<CR>', { noremap = true }) -- Quit discarding changes.
vim.api.nvim_set_keymap('n', '<leader>q', ':q!<CR>', { noremap = true })



-- Undo.
vim.api.nvim_set_keymap('n', '<C-u>', ':undo<CR>', { noremap = true })

-- Use ctrl-[hjkl] to select the active split.
vim.api.nvim_set_keymap('n', '<C-k>', ':wincmd k<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':wincmd j<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-h>', ':wincmd h<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':wincmd l<CR>', { noremap = true })

-- Copy and paste and cut with normal shortcuts ctrl+c ctrl+v ctrl+x.
vim.api.nvim_set_keymap('v', '<C-c>', '"+yi', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-x>', '"+c', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-v>', 'c<ESC>"+p', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-v>', '<ESC>"+pa', { noremap = true })

-- Select all.
vim.api.nvim_set_keymap('i', '<C-a><ESC>', 'ggVG', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true })

