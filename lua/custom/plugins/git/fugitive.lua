return {
  'tpope/vim-fugitive',
  config = function()
    local builtin = require 'telescope.builtin'
    -- -- Example of custom keybindings for vim-fugitive
    vim.keymap.set('n', '<Leader>gp', ':Git push', { noremap = true, desc = '[P]ush current changes' })
    vim.keymap.set('n', '<Leader>gs', ':Git status', { noremap = true, desc = '[S]tatus of current changes' })
    vim.keymap.set('n', '<Leader>gc', ':Git commit -m "', { noremap = true, desc = '[C]ommit latest changes' })
    vim.keymap.set('n', '<Leader>ga', ':Git add %', { noremap = true, desc = '[A]dd the current buffer' })

    vim.keymap.set('n', '<Leader>gls', builtin.git_status, { noremap = true, desc = '[S]tatus of current changes' })
    vim.keymap.set('n', '<Leader>glc', builtin.git_commits, { noremap = true, desc = '[C]ommits from the current branch' })
    vim.keymap.set('n', '<Leader>glb', builtin.git_branches, { noremap = true, desc = '[B]ranches' })
    vim.keymap.set('n', '<Leader>glf', builtin.git_files, { noremap = true, desc = '[F]iles in the repo' })
  end,
}
