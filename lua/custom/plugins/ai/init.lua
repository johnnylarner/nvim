return {
  'jackMort/ChatGPT.nvim',
  event = 'VeryLazy',
  config = function()
    local home = vim.fn.expand '$HOME'
    local key = home .. '/.env.openai'
    require('chatgpt').setup {
      api_key_cmd = 'cat ' .. key,
    }
  end,
  dependencies = {
    'MunifTanjim/nui.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
}
