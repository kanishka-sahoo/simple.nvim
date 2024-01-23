return {
    {
        "s1n7ax/nvim-window-picker",
        name = "window-picker",
        event = "VeryLazy",
        version = "2.*",
        config = function()
            require("window-picker").setup()
        end,
    },
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("toggleterm").setup()
            vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>')
            vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical<CR>')
            vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>')
        end,
    },
}
