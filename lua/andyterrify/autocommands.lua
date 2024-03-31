-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- -- auto delete whitespace at the end of TextYankPostiens
vim.api.nvim_create_autocmd('BufWritePre', {
    group = AndyterrifyGroup,
    desc = "Automatically remove whitespace from the end of lines",
    pattern = "*",
    callback = function()
        vim.cmd([[%s/\s\+$//e]])
    end
})
