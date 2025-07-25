return -- lazy.nvim
{
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {
    -- add any options here
  },
  config = function()
    require('noice').setup {
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = false,
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
      vim.api.nvim_create_autocmd('BufWritePost', {
        callback = function()
          vim.notify('Wrote ' .. vim.fn.expand '%:p', vim.log.levels.INFO)
        end,
      }),
    }
  end,
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    'MunifTanjim/nui.nvim',
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    {
      'rcarriga/nvim-notify',
      opts = {
        stages = 'fade_in_slide_out',
        render = 'wrapped-default',
        background_colour = '#000000',
        top_down = true,
        max_height = function()
          return math.floor(vim.o.lines * 0.95)
        end,
        max_width = function()
          return math.floor(vim.o.columns * 0.25)
        end,
        timeout = 500,
      },
    },
  },
  vim.keymap.set('n', '<leader>nd', function()
    require('notify').dismiss { pending = false, silent = false }
  end, { desc = '[D]imiss open notifications' }),
}
