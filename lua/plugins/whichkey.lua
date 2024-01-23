return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function()
		local wk = require("which-key")
		wk.setup({})
		local mappings = {
			["K"] = { "Hover" },
			f = {
				name = "file", -- optional group name
				f = "Find File", -- same as above
				g = "Live Grep",
				h = "Old Files",
				c = "Colorscheme",
                i = "Git Search"
			},
			n = {
				name = "Neo-tree",
				t = "Neotree Toggle",
				f = "Neotree Focus",
			},
			t = {
				name = "terminal",
				h = "Horizontal terminal",
				v = "Vertical terminal",
				f = "floating terminal",
			},
			g = {
				name = "lsp",
				f = "format",
				d = "Definition",
				D = "Declaration",
				r = "References",
				i = "Implementation",
				t = "Type definition",
				q = "Quickfix",
			},
			c = {
				name = "code",
				a = "actions",
				e = "Disgnostics open float",
				q = "Diagnostics set local list",
				r = "Rename file",
				f = "Format",
                u = "Undo tree"
			},
			w = {
				name = "Workspace",
				l = "List folders",
				r = "Remove folder",
				a = "Add folder",
			},
		}
		local opts = {
			prefix = "<leader>",
		}
		wk.register(mappings, opts)
	end,
}
