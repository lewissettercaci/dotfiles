vim.g.mapleader = ' '
vim.cmd('set timeoutlen=300')

local wk = require('which-key')
wk.register({
    t = {
        name = '+Tabs',
        h = { '<cmd>bfirst<CR>', 'First Tab' },
        j = { '<cmd>bprevious<CR>', 'Previous Tab' },
        k = { '<cmd>bnext<CR>', 'Next Tab' },
        l = { '<cmd>blast<CR>', 'Last Tab' },
        q = { '<cmd>BufferClose<CR>', 'Close Tab' },
        p = { '<cmd>BufferPick<CR>', 'Pick Tab' },
        o = { '<cmd>BufferOrderByBufferNumber<CR>', 'Order Tabs by number' }
    },

    l = {
        name = '+LSP',
        c = { '<cmd>CommentToggle<CR>', 'Toggle a comment' },
        o = { '<cmd>lua vim.diagnostic.open_float()<CR>', 'Open diagnostic' },
        k = { '<cmd>lua vim.diagnostic.goto_prev()<CR>', 'Go to prev diagnostic' },
        j = { '<cmd>lua vim.diagnostic.goto_next()<CR>', 'Go to next diagnostic' },
        q = { '<cmd>lua vim.diagnostic.setloclist()<CR>', 'Set diagnostics in loclist' }
    },

    f = {
        name = '+File Explorer',
        e = { '<cmd>NvimTreeFocus<CR>', 'Focus File Explorer' },
        o = { '<cmd>NvimTreeToggle<CR>', 'Toggle File Explorer' },
        f = { '<cmd>Telescope find_files<CR>', 'Open Telescope file searcher' },
        l = { '<cmd>Telescope live_grep<CR>', 'Open Telescope live grep' },
        b = { '<cmd>Telescope buffers<CR>', 'Open Telescope buffer searcher' }
    },
    w = { '<cmd>w<CR>', 'Write' },
    q = { '<cmd>q<CR>', 'Quit' }
}, { prefix = '<leader>' })
wk.register({ k = { j = { '<ESC>', 'Escape' } } }, { mode = 'i' })

