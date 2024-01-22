-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true

-- Convert line numbers to be relative to cursor
vim.opt.ruler = true
vim.opt.relativenumber = true

-- Display columns in buffer to indicate line length
vim.opt.colorcolumn = "80,120"

-- highlight the line the cursor is on
vim.opt.cursorline = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

vim.o.termguicolors = true

-- Set colour scheme
-- vim.cmd.colorscheme 'tokyonight-night'

-- Disable wrap by default, preferred behavior
vim.o.wrap = false

-- better folding behavior
vim.o.foldmethod = 'indent'
vim.o.foldlevel = 10

-- how many lines to see when at the top or bottom of the buffer
vim.o.scrolloff = 2
