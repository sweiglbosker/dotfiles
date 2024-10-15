return {
	"akinsho/toggleterm.nvim",
	cmd = "ToggleTerm",
	keys = {
		{"<leader>to", ":ToggleTerm<CR>"}
	},
	config = function()
		vim.cmd[[tnoremap <Esc> <C-\><C-n>]]
		require("toggleterm").setup{
			size = 20,
	--		open_mapping = [[<leader>to]],
			hide_numbers = true,
			autochdir = false,
			start_in_insert = true,
			direction = "horizontal",
			close_on_exit = true,
			shade_terminals = false,
		}
	end,
}
