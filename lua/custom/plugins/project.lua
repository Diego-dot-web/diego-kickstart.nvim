return {
  -- Other plugins
  {
    'DrKJeff16/project.nvim',
    -- WARN: IMPORTANT NOT TO LAZY-LOAD THIS PLUGIN
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
    }, -- OPTIONAL
    config = function()
      require('project_nvim').setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        patterns = {
          '.git',
          '.github',
          '_darcs',
          '.hg',
          '.bzr',
          '.svn',
          'package.json',
          'pom.xml',
        },
      }
    end,
    cond = vim.fn.has 'nvim-0.11' == 1,
  },
}
