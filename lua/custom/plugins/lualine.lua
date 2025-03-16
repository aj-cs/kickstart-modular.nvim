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
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_x = {
          'filename',
        },
        lualine_c = {

          '%=',
          {
            'grapple',
            icon = '󰀱',
            indicators = { '1', '2', '3', '4' },
            active_indicators = { '[1]', '[2]', '[3]', '[4]' },
            _separator = ' ',
            no_harpoon = 'grapple not loaded',
          },
        },
        lualine_y = { 'encoding', 'fileformat', 'filetype' },
        lualine_z = { 'progress' },
      }
      local inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      }

      require('lualine').setup {
        options = {
          icons_enabled = true,
          -- theme = 'dracula',
          theme = 'everforest',
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
        inactive_sections = inactive_sections,
      }
    end,
  },
}
