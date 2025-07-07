return {
  -- { -- You can easily change to a different colorscheme.
  --   'vague2k/vague.nvim',
  --   priority = 1000, -- Make sure to load this before all the other start plugins.
  --   init = function()
  --     vim.cmd.colorscheme 'vague'
  --
  --     -- You can configure highlights by doing something like:
  --   end,
  --   config = function()
  --     -- NOTE: you do not need to call setup if you don't want to.
  --     require('vague').setup {
  --       -- optional configuration here
  --       transparent = true,
  --     }
  --   end,
  -- },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('tokyonight').setup {
        transparent = true,
        styles = {
          sidebars = 'transparent',
          floats = 'transparent',
        },
      }
      vim.cmd.colorscheme 'tokyonight-night'
    end,
  },
}
