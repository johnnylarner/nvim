return {
  {
    'chentoast/marks.nvim',

    event = 'VeryLazy',
    opts = {},
    config = function()
      require('marks').setup {
        force_write_shada = true,
      }
    end,
  },
}
