vim.opt.termguicolors = true

require('lualine').setup { options = { theme = 'tokyonight' }, extensions = { 'nvim-tree', 'toggleterm' } }

vim.g.tokyonight_style = 'storm'
vim.cmd('colorscheme tokyonight')
