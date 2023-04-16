local rt = require("rust-tools")
local ih = require("inlay-hints")
local ext_path = vim.env.HOME .. "/.vscode/extensions/vadimcn.vscode-lldb-1.9.0/"
local codelldb_path = ext_path .. "adapter/codelldb"
local liblldb_path = ext_path .. "lldb/lib/liblldb.so"


rt.setup({
    dap = {
        adapter = require('rust-tools.dap')
            .get_codelldb_adapter(codelldb_path, liblldb_path)
    },
    server = {
        on_attach = function(c, bufnr)
            local opts = { buffer = bufnr, remap = false }
            -- RUST SPECIFIC
            vim.keymap.set("n", "<C-h>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>r", rt.code_action_group.code_action_group, { buffer = bufnr })
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
            vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
            vim.keymap.set("n", "<leader>d", function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set("n", "<leader>q", function() vim.diagnostic.goto_prev() end, opts)
            vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
            vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
            vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        end
    }
})
