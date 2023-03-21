local builtin = require('telescope.builtin')
local opts = {}
vim.keymap.set('n', '<leader>ff',function() builtin.find_files(opts) end, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
