local cmp = require 'cmp'

cmp.setup({
    snippet = { expand = function(args) require('luasnip').lsp_expand(args.body) end },
    window = { completion = cmp.config.window.bordered(), documentation = cmp.config.window.bordered() },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true })
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'cmp_git' },
        { name = 'fuzzy_buffer' },
        { name = 'fuzzy_path' }
    }),
    formatting = {
        format = function(entry, vim_item)
            if vim.tbl_contains({ 'path' }, entry.source.name) then
                local icon, hl_group = require('nvim-web-devicons').get_icon(entry:get_completion_item().label)
                if icon then
                    vim_item.kind = icon
                    vim_item.kind_hl_group = hl_group
                    return vim_item
                end
            end
            return require'lspkind'.cmp_format({ with_text = false })(entry, vim_item)
        end
    }
})

cmp.setup.cmdline({ '/', '?' }, { mapping = cmp.mapping.preset.cmdline(), sources = { { name = 'fuzzy_buffer' } } })

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({ { name = 'fuzzy_path' } }, { { name = 'cmdline' } })
})

require'cmp_git'.setup()

