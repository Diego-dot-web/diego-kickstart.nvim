return {
  {
    'javiorfo/nvim-wildcat',
    lazy = true,
    cmd = { 'WildcatRun', 'WildcatUp', 'WildcatInfo' },
    dependencies = { 'javiorfo/nvim-popcorn' },
    opts = {
      -- Not necessary. Only if you want to change the setup
      -- The following are the default values

      console_size = 3,
      jboss = {
        home = 'JBOSS_HOME',
        app_base = 'standalone/deployments',
        default = false,
      },
      tomcat = {
        home = '/usr/share/tomcat9',
        app_base = 'webapps',
        default = true,
      },

      vim.keymap.set('n', '<leader>ws', function()
        vim.cmd.WildcatDown()
        vim.cmd.WildcatRun()
      end),
    },
    keys = {
      { '<leader>wr', '<cmd>WildcatRun<CR>', desc = 'Build and run server' },
      { '<leader>wd', '<cmd>WildcatDown<CR>', desc = 'Stop server' },
      { '<leader>wc', '<cmd>WildcatClean<CR>', desc = 'Clean file' },
      { '<leader>wu', '<cmd>WildcatUp<CR>', desc = 'Up the server' },
      { '<leader>wi', '<cmd>WildcatInfo<CR>', desc = 'Info of the server' },
      { '<leader>we', '<cmd>WildcatDeploy<CR>', desc = 'Deploy file' },
    },
  },
}
