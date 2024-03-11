require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

-- Example keybindings
vim.keymap.set('n', '<M-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<M-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
