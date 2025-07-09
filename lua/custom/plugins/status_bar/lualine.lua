return {
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        theme = 'auto',
        section_separators = '',
        component_separators = '',
        icons_enabled = true,
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = {},
        lualine_c = {
          {
            'filename',
            path = 1, -- 0 = filename, 1 = relative path, 2 = absolute path
          },
        },
        lualine_x = {},
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
    },
  },
}
