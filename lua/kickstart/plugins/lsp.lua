--  This function gets run when an LSP connects to a particular buffer.
local on_attach = function(client, bufnr)
  -- NOTE: Remember that lua is a real programming language, and as such it is possible
  -- to define small helper and utility functions so you don't have to repeat yourself
  -- many times.
  --
  -- In this case, we create a function that lets us more easily define mappings specific
  -- for LSP related items. It sets the mode, buffer and description for us each time.
  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end

    vim.keym.set('n', keys, func, { buffer = bufnr, desc = desc })
  end

-- keybinds for problems
vim.keym.set("n", "<leader>xx", function() require("trouble").toggle() end, { desc = 'Toggle Trouble' })
vim.keym.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end,
  { desc = 'Workspace diagnostics' })
vim.keym.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end,
  { desc = 'Buffer diagnostics' })
vim.keym.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end, { desc = 'Quickfix' })
vim.keym.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end, { desc = 'Loclist' })
vim.keym.set("n", "gR", function() require("trouble").toggle("lsp_references") end, { desc = 'LSP References' })

-- document existing key chains
require('which-key').register {
  ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
  ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
  ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
  ['<leader>h'] = { name = 'More git', _ = 'which_key_ignore' },
  ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
  ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
  ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
}

