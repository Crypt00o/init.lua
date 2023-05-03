function OpenTerminal()
	vim.cmd('belowright split')
	vim.cmd.terminal()
end

-- NewTap
function NewTerminalTab()
	vim.cmd.tabnew()
	vim.cmd.terminal()
end

-- Open Terminal in new Tab

vim.api.nvim_set_keymap('i', '<C-t>', "<Esc>:lua NewTerminalTab() <CR>", { noremap = true }) -- Opening a new tab.
vim.api.nvim_set_keymap('n', '<C-t>', ':lua NewTerminalTab() <CR>', { noremap = true })

-- Open Terminal Down

vim.api.nvim_set_keymap('i', '<C-z>', '<esc>:lua OpenTerminal()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-z>', ':lua OpenTerminal()<CR>', { noremap = true })
