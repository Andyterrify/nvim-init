return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    -- event = "VeryLazy",
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup({})
        vim.keymap.set("n", "<leader>t", function() harpoon:list():append() end)
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        -- vim.reymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
        -- vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
        -- vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
        -- vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
    end
}
