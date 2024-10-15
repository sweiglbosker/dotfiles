return {
	"nvim-tree/nvim-tree.lua",
	keys = {
		{'<C-t>', ':NvimTreeToggle<CR>'}
	},
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		require("nvim-tree").setup({
			sync_root_with_cwd = true,
			respect_buf_cwd = true,
			update_focused_file = {
				enable = true,
				update_root = true,
			},
			on_attach = function(bufnr)
				local api = require("nvim-tree.api")
				local function opts(desc)
					return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true}
				end

				api.config.mappings.default_on_attach(bufnr)

				vim.keymap.set('n', '<C-t>', ':NvimTreeToggle<CR>', opts("Toggle Tree"))
				vim.keymap.set('n', 'e', 'k', opts("Scroll Down"))
				vim.keymap.set('n', 'k', api.fs.rename_basename, opts("Rename Basename"))
			end,
		})

	end,
}
