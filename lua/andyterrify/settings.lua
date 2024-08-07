-- Set highlight on search
vim.o.hlsearch = true
vim.opt.incsearch = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Set to true if you have a Nerd Font installed
vim.g.have_nerd_font = true

-- Make line numbers default
vim.opt.number = true
vim.opt.ruler = true
vim.opt.relativenumber = true

-- Display columns in buffer to indicate line length
vim.opt.colorcolumn = "88,120"

-- Don't show the mode, since it's already in status line
-- vim.opt.showmode = false

-- highlight the line the cursor is on
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = false
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- -- Decrease update time
-- vim.o.updatetime = 250
-- vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
-- TODO: CHeck this again
-- vim.o.completeopt = 'menuone,noselect'

-- enable termcolors
vim.o.termguicolors = true

-- Disable wrap by default, hate wrap
vim.o.wrap = false

-- Configure how new splits should be opened
-- TODO: Check this
-- vim.opt.splitright = true
-- vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- better folding
vim.o.foldmethod = 'indent'
vim.o.foldlevel = 8

-- how many lines to see when at the top or bottom of the buffer
vim.o.scrolloff = 8

-- Enable break indent
vim.opt.breakindent = true
-- don't break mid word
vim.opt.linebreak = true

-- set default tab and indent behaviour
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- expand tab to space
vim.opt.smartindent = true

-- -- This will disable the vim swap and backup files and only use undotree,
-- -- saving undo files to ~/.local/state/nvim/undotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("state") .. "/undotree"

-- NOTE: on idea
vim.opt.isfname:append("@-@")

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
