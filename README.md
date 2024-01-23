# Simple.nvim
A simple neovim configuration for all the essentials

# Installation
`git clone --depth 1 https://github.com/kanishka-sahoo/simple.nvim.git ~/.config/nvim && nvim`

# Configuration
The plugins are defined in the path `lua/plugins/[plugin].lua`. However, there are exceptions.
1. `/lspconfig.lua` contains the LSPs to be installed
2. `/telescope.lua` also contains the telescope-ui-select
3. `/completions.lua` also defines snippet settings
