function ColorSchemeSelect(colors)
    colors = colors or "zenburn"
    vim.cmd.colorscheme = colors
end

ColorSchemeSelect()
