return {
  'tpope/vim-fugitive',
  config = function()
    -- -- Example of custom keybindings for vim-fugitive
    vim.keymap.set('n', '<Leader>gp', ':Git push', { noremap = true, desc = 'Git [p]ush current changes' })
    vim.keymap.set('n', '<Leader>gs', ':Git status', { noremap = true, desc = 'Git [s]tatus of current changes' })
    vim.keymap.set('n', '<Leader>gc', ':Git commit -m "', { noremap = true, desc = 'Git [c]ommit latest changes' })
    vim.keymap.set('n', '<Leader>ga', ':Git add %', { noremap = true, desc = 'Git [a]dd the current buffer' })
  end,
}
