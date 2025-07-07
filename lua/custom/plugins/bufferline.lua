return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    lazy = false,
    opts = {
      options = {
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match 'error' and ' ' or ' '
          return ' ' .. icon .. count
        end,
        separator_style = 'padded-slant',
      },
    },
    keys = {
      { 'H', '<cmd>bprevious<CR>' },
      { 'L', '<cmd>bnext<CR>' },
      { '<leader>bd', '<cmd>bdelete<CR>' },
    },
  },
}
