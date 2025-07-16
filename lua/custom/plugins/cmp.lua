return {
  {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    dependencies = { 'rafamadriz/friendly-snippets', 'saghen/blink.compat' },

    version = '*',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = 'default', ['<CR>'] = { 'accept', 'fallback' } },

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono',
      },

      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer', 'obsidian', 'obsidian_new', 'obsidian_tags' },

        providers = {
          obsidian = {
            name = 'obsidian',
            module = 'blink.compat.source',
          },
          obsidian_new = {
            name = 'obsidian_new',
            module = 'blink.compat.source',
          },
          obsidian_tags = {
            name = 'obsidian_tags',
            module = 'blink.compat.source',
          },
        },
      },
    },
    opts_extend = { 'sources.default' },
  },
}
