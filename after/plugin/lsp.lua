local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	'tsserver',
	'rust_analyzer',
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

local lsp_format_on_save = function(bufnr)
	vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
	vim.api.nvim_create_autocmd('BufWritePre', {
		group = augroup,
		buffer = bufnr,
		callback = function()
			vim.lsp.buf.format()
		end,
	})
end


local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_replace = { behavior = cmp.ConfirmBehavior.Replace }
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<Up>'] = cmp.mapping.select_prev_item(cmp_select),
	['<Down>'] = cmp.mapping.select_next_item(cmp_select),
	['<Tab>'] = cmp.mapping.confirm({ select = true, cmp_replace }),
	['<S-Up>'] = cmp.mapping.scroll_docs(-4),
	['<S-Down>'] = cmp.mapping.scroll_docs(4),
	['<Esc>'] = cmp.mapping.abort(),
	['<C-Space>'] = cmp.mapping.complete(),
	['<S-Tab>'] = nil
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.set_preferences({
	suggest_lsp_servers = false,
	sign_icons = {
		error = 'E',
		warn = 'W',
		hint = 'H',
		info = 'I'
	}
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
	vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, opts)

	-- Format On Save
	-- lsp_format_on_save(bufnr)
end)

lsp.setup()

vim.diagnostic.config({
	virtual_text = true
})
