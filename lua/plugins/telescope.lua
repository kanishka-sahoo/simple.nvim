return {
    {
        'nvim-telescope/telescope.nvim',
        event = "VeryLazy",
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>fc', builtin.colorscheme, {})
            vim.keymap.set('n', '<leader>fh', builtin.oldfiles, {})
            vim.keymap.set('n', '<leader>gq', builtin.quickfix, {})
        end
    }, {
        'nvim-telescope/telescope-ui-select.nvim',
        event = "VeryLazy",
        config = function()
            require("telescope").setup {
            extensions = {
                ["ui-select"] = {
                  require("telescope.themes").get_dropdown {
                  }
                }
              }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}
