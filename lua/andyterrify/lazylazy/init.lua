-- vim: ts=2 sts=2 sw=2 et
-- standard plugins to always have

return {
  -- Just in case
  -- 'tpope/vim-sleuth',
  -- Lazy

  {
    "folke/tokyonight.nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight-night]])
    end
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  "mbbill/undotree",

  {
    "tpope/vim-fugitive",
    event = "VeryLazy"
  },

  {
    'jinh0/eyeliner.nvim',
    event = "InsertEnter",
    config = function()
      require 'eyeliner'.setup {
        highlight_on_key = true, -- show highlights only after keypress
        dim = true               -- dim all other characters if set to true (recommended!)
      }
    end
  },

  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = true,
        theme = 'tokyonight',
        component_separators = '|',
        section_separators = '',
      },
    },
  },

  -- {
  --   'anuvyklack/pretty-fold.nvim',
  --   config = function()
  --     require("pretty-fold").setup({})
  --   end
  -- },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },

  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    event = "VeryLazy",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre /home/avasile/Documents/obsidian/personal-vault/**.md",
    --   "BufNewFile /home/avasile/Documents/Obsidian/General Vault/**.md",
    -- },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "/home/avasile/Documents/obsidian/personal-vault",
        },
      },
      notes_subdir = "notes",

      -- copletion = {
      --   nvim_cmp = true,
      --   min_chars = 2,
      --   new_notes_location = "notes_subdir"
      -- }
    }
  }

}
