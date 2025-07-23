return {
  { -- You can easily change to a different colorscheme.
    'vague2k/vague.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- vim.cmd.colorscheme 'vague'

      -- You can configure highlights by doing something like:
    end,
    config = function()
      -- NOTE: you do not need to call setup if you don't want to.
      require('vague').setup {
        transparent = false, -- don't set background
        -- disable bold/italic globally in `style`
        bold = true,
        italic = true,
        style = {
          -- "none" is the same thing as default. But "italic" and "bold" are also valid options
          boolean = 'bold',
          number = 'none',
          float = 'none',
          error = 'bold',
          comments = 'italic',
          conditionals = 'none',
          functions = 'none',
          headings = 'bold',
          operators = 'none',
          strings = 'italic',
          variables = 'none',

          -- keywords
          keywords = 'none',
          keyword_return = 'italic',
          keywords_loop = 'none',
          keywords_label = 'none',
          keywords_exception = 'none',

          -- builtin
          builtin_constants = 'bold',
          builtin_functions = 'none',
          builtin_types = 'bold',
          builtin_variables = 'none',
        },
        -- plugin styles where applicable
        -- make an issue/pr if you'd like to see more styling options!
        plugins = {
          cmp = {
            match = 'bold',
            match_fuzzy = 'bold',
          },
          dashboard = {
            footer = 'italic',
          },
          lsp = {
            diagnostic_error = 'bold',
            diagnostic_hint = 'none',
            diagnostic_info = 'italic',
            diagnostic_ok = 'none',
            diagnostic_warn = 'bold',
          },
          neotest = {
            focused = 'bold',
            adapter_name = 'bold',
          },
          telescope = {
            match = 'bold',
          },
        },

        -- Override highlights or add new highlights
        on_highlights = function(highlights, colors) end,

        -- Override colors
        colors = {
          bg = '#141415',
          fg = '#cdcdcd',
          floatBorder = '#878787',
          line = '#252530',
          comment = '#606079',
          builtin = '#b4d4cf',
          func = '#c48282',
          string = '#e8b589',
          number = '#e0a363',
          property = '#c3c3d5',
          constant = '#aeaed1',
          parameter = '#bb9dbd',
          visual = '#333738',
          error = '#d8647e',
          warning = '#f3be7c',
          hint = '#7e98e8',
          operator = '#90a0b5',
          keyword = '#6e94b2',
          type = '#9bb4bc',
          search = '#405065',
          plus = '#7fa563',
          delta = '#f3be7c',
        },
      }
    end,
  },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('tokyonight').setup {
        -- transparent = true,
        -- styles = {
        --   sidebars = 'transparent',
        --   floats = 'transparent',
        -- },
      }
      -- vim.cmd 'colorscheme tokyonight'
    end,
  },

  -- Lazy
  {
    'olimorris/onedarkpro.nvim',
    priority = 1000, -- Ensure it loads first
    config = function()
      require('onedarkpro').setup {
        colors = {}, -- Override default colors or create your own
        highlights = {}, -- Override default highlight groups or create your own
        styles = { -- For example, to apply bold and italic, use "bold,italic"
          types = 'NONE', -- Style that is applied to types
          methods = 'NONE', -- Style that is applied to methods
          numbers = 'NONE', -- Style that is applied to numbers
          strings = 'NONE', -- Style that is applied to strings
          comments = 'NONE', -- Style that is applied to comments
          keywords = 'NONE', -- Style that is applied to keywords
          constants = 'NONE', -- Style that is applied to constants
          functions = 'NONE', -- Style that is applied to functions
          operators = 'NONE', -- Style that is applied to operators
          variables = 'NONE', -- Style that is applied to variables
          parameters = 'NONE', -- Style that is applied to parameters
          conditionals = 'NONE', -- Style that is applied to conditionals
          virtual_text = 'NONE', -- Style that is applied to virtual text
        },
        filetypes = { -- Override which filetype highlight groups are loaded
          c = true,
          comment = true,
          go = true,
          html = true,
          java = true,
          javascript = true,
          json = true,
          lua = true,
          markdown = true,
          php = true,
          python = true,
          ruby = true,
          rust = true,
          scss = true,
          toml = true,
          typescript = true,
          typescriptreact = true,
          vue = true,
          xml = true,
          yaml = true,
        },
        plugins = { -- Override which plugin highlight groups are loaded
          aerial = true,
          barbar = true,
          blink_cmp = true,
          codecompanion = true,
          copilot = true,
          dashboard = true,
          flash_nvim = true,
          gitgraph_nvim = true,
          gitsigns = true,
          hop = true,
          indentline = true,
          leap = true,
          lsp_saga = true,
          lsp_semantic_tokens = true,
          marks = true,
          mini_diff = true,
          mini_icons = true,
          mini_indentscope = true,
          mini_test = true,
          neotest = true,
          neo_tree = true,
          nvim_cmp = true,
          nvim_bqf = true,
          nvim_dap = true,
          nvim_dap_ui = true,
          nvim_hlslens = true,
          nvim_lsp = true,
          nvim_navic = true,
          nvim_notify = true,
          nvim_tree = true,
          nvim_ts_rainbow = true,
          op_nvim = true,
          packer = true,
          persisted = true,
          polygot = true,
          rainbow_delimiters = true,
          render_markdown = true,
          startify = true,
          telescope = true,
          toggleterm = true,
          treesitter = true,
          trouble = true,
          vim_ultest = true,
          which_key = true,
          vim_dadbod_ui = true,
        },

        options = {
          cursorline = false, -- Use cursorline highlighting?
          transparency = false, -- Use a transparent background?
          terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
          lualine_transparency = false, -- Center bar transparency?
          highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
        },
      }
      -- vim.cmd 'colorscheme onedark'
    end,
  },

  -- somewhere in your config:
  --
  {
    'rebelot/kanagawa.nvim',
    priority = 1000, -- Ensure it loads first
    config = function()
      require('kanagawa').setup {
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        theme = 'wave', -- Load "wave" theme
        background = { -- map the value of 'background' option to a theme
          dark = 'wave', -- try "dragon" !
          light = 'lotus',
        },
      }
      vim.cmd 'colorscheme kanagawa'
    end,
  },
}
