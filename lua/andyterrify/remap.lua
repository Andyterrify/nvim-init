-- set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {})

-- faster line movement
-- the `=` realigns given treesitter!
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {})

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- quicker buffers
vim.keymap.set('n', '<C-m>', ":bn<CR>", { noremap = true, desc = "Next Buffer" })
vim.keymap.set('n', '<C-n>', ":bp<CR>", { noremap = true, desc = "Previous Buffer" })

-- quicker buffers
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, desc = "Move to left window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, desc = "Move to up window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, desc = "Move to down window" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, desc = "Move to right window" })

-- Faster exit
vim.keymap.set("i", "jk", "<Esc>", { desc = "Esc" })

vim.keymap.set("n", "J", "mzJ`z")

-- -- When moving up and down, center the cursor
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- when working with searching, center the selection
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- yanks into system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- next and previous diagnotic
vim.keymap.set("n", "<C-]>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-[>", "<cmd>cprev<CR>zz")
-- next and prev location list
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- disable highlighting
vim.keymap.set({"n", "v"}, "<leader>x", "<cmd>nohlsearch<CR>")

-- search and modify all occurendes of the word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Open fugitive to the side
vim.keymap.set("n", "<leader>G", "<cmd>vert Git<CR>", {})
-- Toggle unfotree
vim.keymap.set("n", "<leader>ut", "<cmd>UndotreeToggle<CR>", {})
-- Search project TODOs
vim.keymap.set('n', '<leader>sn', ":TodoTelescope<CR>", { noremap = true, desc = "[S]earch [N]otes" })

-- attach LSP keybindings
-- https://github.com/neovim/nvim-lspconfig#suggested-configuration
vim.api.nvim_create_autocmd('LspAttach', {
    group = AndyterrifyGroup,
    callback = function(e)
        local opts = {buffer = e.buf}
        vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    end
})


