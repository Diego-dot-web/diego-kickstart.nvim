return {
  -- 'stevearc/oil.nvim',
  -- ---@module 'oil'
  -- ---@type oil.SetupOpts
  -- opts = {},
  -- -- Optional dependencies
  -- dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  -- -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  -- lazy = false,
  -- keys = {
  --   { '<C-e>', '<CMD>Oil<CR>' },
  -- },
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
      sync_root_with_cwd = true, --fix to open cwd with tree
      respect_buf_cwd = true,
      update_cwd = true,
      update_focused_file = {
        enable = true,
        update_cwd = true,
        update_root = true,
      },
    }
  end,
  keys = {
    { '<C-e>', '<CMD>NvimTreeToggle<CR>' },
  },
}
