return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      require('mini.ai').setup { n_lines = 500 }

      require('mini.surround').setup()

      local statusline = require 'mini.statusline'
      statusline.setup { use_icons = vim.g.have_nerd_font }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end

      -- require('mini.files').setup {
      --   mappings = {
      --     go_in = '',
      --     go_in_plus = 'l',
      --   },
      --
      --   windows = {
      --     preview = true,
      --     width_preview = 50,
      --   },
      -- }

      -- vim.keymap.set('n', '<C-e>', function()
      --   if not MiniFiles.get_explorer_state() then
      --     MiniFiles.open()
      --   else
      --     MiniFiles.close()
      --   end
      -- end)

      require('mini.pairs').setup()
      require('mini.icons').setup()
      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
  },
}
