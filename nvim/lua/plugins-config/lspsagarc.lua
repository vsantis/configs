local saga = require 'lspsaga'

saga.init_lsp_saga()

local opts = { noremap=true, silent=true }

vim.keymap.set('n', 'K', ':Lspsaga hover_doc<cr>')
