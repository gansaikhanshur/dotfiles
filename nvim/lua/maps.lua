vim.g.mapleader = ' '
local keymap = vim.keymap
local opts = { silent = true }

keymap.set('n', '<leader>q', '<cmd>q<cr>')
keymap.set('n', '<leader>w', '<cmd>w<cr>')
keymap.set('n', '<leader>x', '<cmd>x<cr>')

-- map ctrl-c to esc
keymap.set("i", "<C-c>", "<esc>", opts)

-- select all
keymap.set('n', '<c-a>', 'gg<S-v>G')

keymap.set('n', '<leader>s', ':vsplit<Return><C-w>w', opts)
keymap.set('n', 'f', '<C-w>w')

-- uppercase H & L to go to beginning and end of line
keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')

-- turn off arrow keys - force HJKL
keymap.set("n", "<UP>", "<NOP>", opts)
keymap.set("n", "<DOWN>", "<NOP>", opts)
keymap.set("n", "<LEFT>", "<NOP>", opts)
keymap.set("n", "<RIGHT>", "<NOP>", opts)
keymap.set("n", "<RIGHT>", "<NOP>", opts)

keymap.set("v", "<UP>", "<NOP>", opts)
keymap.set("v", "<DOWN>", "<NOP>", opts)
keymap.set("v", "<LEFT>", "<NOP>", opts)
keymap.set("v", "<RIGHT>", "<NOP>", opts)

keymap.set("i", "<UP>", "<NOP>", opts)
keymap.set("i", "<DOWN>", "<NOP>", opts)
keymap.set("i", "<LEFT>", "<NOP>", opts)
keymap.set("i", "<RIGHT>", "<NOP>", opts)

-- use Ctrl + h/j/k/l for movement in insert mode
keymap.set("i", "<C-h>", "<Left>", opts)
keymap.set("i", "<C-j>", "<Down>", opts)
keymap.set("i", "<C-k>", "<Up>", opts)
keymap.set("i", "<C-l>", "<Right>", opts)
