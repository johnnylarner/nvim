return {
  'cbochs/grapple.nvim',
  opts = {
    scope = 'git', -- also try out "git_branch"
  },
  event = { 'BufReadPost', 'BufNewFile' },
  cmd = 'Grapple',
  keys = {
    {
      '<leader>ma',
      function()
        require('grapple').tag {}
      end,
      desc = '[A]dd tag file under cursor',
    },

    {
      '<leader>mr',
      function()
        require('grapple').tag {}
      end,
      desc = '[R]emove file under cursor from tags',
    },
  },
}
