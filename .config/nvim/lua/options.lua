vim.cmd('filetype plugin on')
vim.cmd('syntax on')
vim.cmd('filetype indent off')
vim.cmd('set omnifunc=syntaxcomplete#Complete')
vim.cmd('let $NVIM_TUI_ENABLE_TRUE_COLOR=1')
vim.cmd('set timeoutlen=300')

vim.completeopt = { 'menuone', 'noselect' }

vim.opt.clipboard = 'unnamedplus'
vim.opt.nu = true
vim.opt.tabstop = 4
vim.opt.softtabstop = -1
vim.opt.expandtab = true
vim.opt.shiftwidth = 0
vim.opt.shiftround = true
vim.opt.smartindent = true
vim.opt.linebreak = true
vim.opt.cindent = true
vim.opt.cursorline = true
vim.opt.title = true
vim.opt.cmdheight = 1
vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.undofile = true
vim.opt.gdefault = true
vim.opt.showmatch = true
vim.opt.wrap = true

vim.g.mapleader = ' '

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
