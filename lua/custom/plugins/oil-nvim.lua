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
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      -- Optional image support for file preview: See `# Preview Mode` for more information.
      -- {"3rd/image.nvim", opts = {}},
      -- OR use snacks.nvim's image module:
      -- "folke/snacks.nvim",
    },
    lazy = false, -- neo-tree will lazily load itself
    ---@module "neo-tree"
    ---@type neotree.Config?
    opts = {
      -- add options here
      event_handlers = {
        {
          event = 'file_open_requested',
          handler = function()
            -- auto close
            -- vim.cmd("Neotree close")
            -- OR
            require('neo-tree.command').execute { action = 'close' }
          end,
        },
      },
    },
    keys = {
      { '<C-e>', '<CMD>Neotree toggle<CR>' },
    },
  },
}
