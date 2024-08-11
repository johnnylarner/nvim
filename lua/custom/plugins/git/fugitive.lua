return {
  'tpope/vim-fugitive',
  config = function()
    local builtin = require 'telescope.builtin'
    -- -- Example of custom keybindings for vim-fugitive
    vim.keymap.set('n', '<Leader>gp', function()
      vim.cmd 'Git push'
    end, { noremap = true, desc = '[P]ush current changes' })
    vim.keymap.set('n', '<Leader>gs', function()
      vim.cmd 'Git status'
    end, { noremap = true, desc = '[S]tatus of current changes' })
    vim.keymap.set('n', '<Leader>gc', function()
      vim.cmd 'Git commit'
    end, { noremap = true, desc = '[C]ommit latest changes' })
    vim.keymap.set('n', '<Leader>ga', function()
      vim.cmd 'Git add %'
    end, { noremap = true, desc = '[A]dd the current buffer' })
  end,
}
