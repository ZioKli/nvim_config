local builtin = require('telescope.builtin')
local opts = {}
vim.keymap.set('n', '<leader>ff', function() builtin.find_files(opts) end, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep)
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fw', builtin.lsp_document_symbols, {})
