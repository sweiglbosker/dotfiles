return {
	"folke/trouble.nvim",
	opts = {
		keys = {
			n = next,
			e = prev
		}
	},
	cmd = "Trouble",
	keys = {
		{
			"<leader>dt",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Toggle Diagnostics (Trouble)",
		},
		{
			"<leader>cs",
			"<cmd>Trouble symbols toggle focus=false<cr>",
			desc = "Symbols (Trouble)",
		},
	},
}
