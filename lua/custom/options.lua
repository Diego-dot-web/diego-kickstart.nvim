vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.omni_sql_no_default_maps = 1

vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'

vim.opt.showmode = false

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.breakindent = true

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 250

vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = {
  tab = '│ ', -- línea vertical para tabulaciones
  trail = '·', -- punto para espacios al final
  extends = '⟩', -- cuando la línea continúa a la derecha
  precedes = '⟨', -- cuando la línea continúa a la izquierda
  nbsp = '␣', -- espacio no separable
}

vim.opt.inccommand = 'split'

vim.opt.cursorline = true

vim.opt.scrolloff = 4

vim.opt.termguicolors = true

vim.opt.expandtab = true

vim.g.autoformat = true

vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.linebreak = true
vim.opt.preserveindent = true
vim.opt.wrap = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.nvim_tree_respect_buf_cwd = 1
