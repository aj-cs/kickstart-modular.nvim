return {
  {
    'nanozuki/tabby.nvim',
    config = function()
      vim.o.showtabline = 2

      local C = require('catppuccin.palettes').get_palette()
      local N = require('nightfox.palette').load 'duskfox'

      local catppuccin = {
        head = { fg = C.mantle, bg = C.mauve },
        current_tab = { fg = C.mantle, bg = C.blue },
        tab = 'Tabline',
        win = { fg = C.base, bg = C.green },
        tail = { fg = C.mantle, bg = C.mauve },
      }

      local duskfox = {
        fill = 'TabLineFill',
        head = { fg = N.bg0, bg = N.cyan.base },
        current_tab = 'TabLineSel',
        win = 'TabLine',
        -- tail = 'UserTLHead',
      }

      require('tabby.tabline').use_preset('active_wins_at_tail', {
        theme = duskfox,
      })

      vim.keymap.set('n', '<leader>tt', '<Cmd>$tabnew<CR>', { noremap = true })
      vim.keymap.set('n', '<leader>tw', '<Cmd>tabclose<CR>', { noremap = true })
      vim.keymap.set('n', '<leader>th', '<Cmd>tabp<CR>', { noremap = true })
      vim.keymap.set('n', '<leader>tl', '<Cmd>tabn<CR>', { noremap = true })
      vim.keymap.set('n', '<C-]>', '<Cmd>tabn<CR>', { noremap = true })
      vim.keymap.set('n', '<leader>tmp', '<Cmd>-tabmove<CR>', { noremap = true })
      vim.keymap.set('n', '<leader>tmn', '<Cmd>+tabmove<CR>', { noremap = true })
    end,
    event = 'UiEnter',
  },
}
