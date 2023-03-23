local dap = require('dap');

dap.configurations.rust = {
    name = "Launch file",
    type = "codelldb",
    program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
}

-- vim.keymap.set("n", "<leader>db", function() dap.toggle_breakpoint() end, opts)
-- vim.keymap.set("n", "<leader>dc", function() dap.continue() end, opts)
-- vim.keymap.set("n", "<leader>dsi", function() dap.step_into() end, opts)
-- vim.keymap.set("n", "<leader>dso", function() dap.step_over() end, opts)
