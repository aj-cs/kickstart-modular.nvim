--[[return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'gruvbox-material',
      },
    }
  end,
}
--'gruvbox_dark',
--'codedark', --'dracula',]]
--
--
--

return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = 'UiEnter',
    config = function()
      local sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff' },
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = { 'encoding', 'fileformat', 'filetype' },
        lualine_z = { 'location', 'progress' },
      }

      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'dracula',
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
          disabled_filetypes = {
            'NvimTree',
            'alpha',
            'dashboard',
            'packer',
            'startify',
            'starter',
          },
          always_divide_middle = false,
          globalstatus = true,
        },
        sections = sections,
      }
    end,
  },
}
