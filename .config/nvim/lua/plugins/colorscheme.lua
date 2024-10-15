return {
	"RRethy/base16-nvim",
	config = function()
		vim.cmd[[colorscheme base16-mountain]]
		vim.cmd[[hi LineNrAbove guifg=#262626]]
		vim.cmd[[hi LineNrBelow guifg=#262626]]
		vim.cmd[[hi LineNr guifg=#ceb188]]
		vim.cmd[[hi CursorLineNr guifg=#ceb188 guibg=#191919 gui=bold]]
		vim.cmd[[hi FloatBorder guifg=#4c4c4c]]
		vim.cmd[[hi WinBar guifg=#4c4c4c]]
		vim.cmd[[hi WinSeparator guifg=#4c4c4c]]

		vim.cmd[[
			hi StatusLine guibg=#191919 guifg=#4c4c4c
			hi StatuslineInactive guibg=#191919 guifg=#4c4c4c gui=NONE
			hi StatuslineAccent guifg=#0f0f0f guibg=#aca98a gui=bold
			hi StatuslineInsertAccent guifg=#0f0f0f guibg=#8aabac gui=bold
			hi StatuslineVisualAccent guifg=#0f0f0f guibg=#8f8aac gui=bold
			hi StatuslineReplaceAccent guifg=#0f0f0f guibg=#ac8a8c gui=bold
			hi StatuslineTerminalAccent guifg=#0f0f0f guibg=#ac8a8c gui=bold
			hi StatuslineCommandAccent guifg=#0f0f0f guibg=#8aac8b gui=bold
			hi StatuslineFileIcon guibg=#191919 guifg=#8f8aac
			hi StatuslineInfo guibg=#191919 guifg=#4c4c4c 
			hi LspError guibg=#191919 guifg=#c49ea0
			hi LspWarn guibg=#191919 guifg=#8f8aac
			hi LspInfo guibg=#191919 guifg=#8f8aac
			hi LspHint guibg=#191919 guifg=#8aabac
		]]
	end
}
