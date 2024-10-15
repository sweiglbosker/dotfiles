function map(mode, bind, action)
	vim.keymap.set(mode, bind, action, {silent = true})
end

function swap(mode, bind1, bind2)
	local tmp=bind1 
	map(mode, bind1, bind2)
	map(mode, bind2, tmp)
end
	
function swapn(bind1, bind2)
	swap('n', bind1, bind2)
end

swapn('m', 'h')
swapn('n', 'j')
swapn('e', 'k')
swapn('i', 'l')

swap('v', 'm', 'h')
swap('v', 'n', 'j')
swap('v', 'e', 'k')
swap('v', 'i', 'l')

map('n', '<C-i>', '<C-w><C-l>')
map('n', '<C-m>', '<C-w><C-h>')
map('n', '<C-n>', '<C-w><C-j>')
map('n', '<C-e>', '<C-w><C-k>')
map('n', '<Leader>wi', '<C-w><C-l>')
map('n', '<Leader>wm', '<C-w><C-h>')
map('n', '<Leader>wn', '<C-w><C-j>')
map('n', '<Leader>we', '<C-w><C-k>')

map('n', '<Leader><C-M>', "<C-w><")
map('n', '<Leader><C-I>', "<C-w>>")
map('n', '<Leader><C-N>', "<C-w>+")
map('n', '<Leader><C-E>', "<C-w>-")

map('n', '<leader>ww', ':split<CR>')
map('n', '<leader>wv', ':vsplit<CR>')
map('n', '<leader>wd', '<C-w><C-q>')
map('n', '<leader>wc', '<C-w><C-q>')

map('n', '[b', ':bp<CR>')
map('n', ']b', ':bn<CR>')
map('n', '<C-c>', ':bd<CR>')

map('n', '<leader>db', ':DapToggleBreakpoint<CR>')
map('n', '<leader>dc', ':DapContinue<CR>')
