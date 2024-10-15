return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		require("plugins.autopairs"),
		require("plugins.nvim-cmp"),
	},
	config = function()
		local cmp = require("cmp")
		local lspconfig = require("lspconfig")
		local protocol = require("vim.lsp.protocol")

		local on_attach = function(client, bufnr) 
			if client.server_capabilities.documentFormattingProvider then
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = vim.api.nvim_create_augroup("Format", { clear = true }),
					buffer = bufnr,
					callback = function()
						vim.lsp.buf.format()
					end,
				})
			end
		end

		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		vim.diagnostic.config({
			virtual_text = false
		})

		require('lspconfig')['clangd'].setup {
			capabilities = capabilities
		}

		require('lspconfig').zls.setup{}
		require('lspconfig').pyright.setup{}

	end
}
