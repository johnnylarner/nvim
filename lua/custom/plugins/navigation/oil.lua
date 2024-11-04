return {
  'stevearc/oil.nvim',
  -- Keymaps are here: https://github.com/stevearc/oil.nvim/blob/71c972fbd218723a3c15afcb70421f67340f5a6d/README.md?plain=1#L188
  opts = { vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' }), view_options = { show_hidden = true } },
  -- Optional dependencies
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
