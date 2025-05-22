local function choose_theme()
  local handle = io.popen 'sh /Users/jamie/set-theme-based-on-sun.sh'
  local theme = 'NIGHT' -- Default theme
  if handle then
    theme = handle:read '*a'
    handle:close()
    theme = theme:gsub('%s+', '') -- Trim any whitespace or newlines
  else
    print 'Failed to execute theme picker shell command'
  end
  if theme == 'DAY' then
    return 'day'
  else
    return 'night'
  end
end
return {
  -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'ellisonleao/gruvbox.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    local theme = choose_theme()
    -- if theme == 'day' then
    --   vim.o.background = 'light' -- or "light" for light mode
    -- else
    vim.o.background = 'dark' -- or "light" for light mode
    require('gruvbox').setup {
      contrast = 'hard',
    }
    -- end
    vim.cmd 'colorscheme gruvbox'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
}
