return {
  {
    'rachartier/tiny-inline-diagnostic.nvim',
    event = 'VeryLazy', -- Or `LspAttach`
    priority = 1000, -- needs to be loaded in first
    config = function()
      require('tiny-inline-diagnostic').setup {
        -- Style preset for diagnostic messages
        -- Available options:
        -- "modern", "classic", "minimal", "powerline",
        -- "ghost", "simple", "nonerdfont", "amongus"
        preset = 'ghost',

        -- Configuration for multiline diagnostics
        -- Can either be a boolean or a table with the following options:
        --  multilines = {
        --      enabled = false,
        --      always_show = false,
        -- }
        -- If it set as true, it will enable the feature with this options:
        --  multilines = {
        --      enabled = true,
        --      always_show = false,
        -- }
        options = {
          multilines = {
            -- Enable multiline diagnostic messages
            enabled = true,

            -- Always show messages on all lines for multiline diagnostics
            always_show = true,

            -- Trim whitespaces from the start/end of each line
            trim_whitespaces = false,

            -- Replace tabs with spaces in multiline diagnostics
            tabstop = 4,
          },
        },
      }
      vim.diagnostic.config { virtual_text = false } -- Only if needed in your configuration, if you already have native LSP diagnostics
    end,
  },
}
