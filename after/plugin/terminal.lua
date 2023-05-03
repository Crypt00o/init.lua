
function OpenTerminal()
	vim.cmd ('belowright split')
	vim.cmd.terminal()
end

-- Opening a terminal

vim.api.nvim_set_keymap('i', '<C-z>', '<esc>:lua OpenTerminal()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-z>', ':lua OpenTerminal()<CR>', { noremap = true })
