return {
  {
    'olimorris/codecompanion.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-nui/nui.nvim',
    },
    config = function()
      require('codecompanion').setup {
        adapters = {
          anthropic = function()
            return require('codecompanion.adapters').extend('anthropic', {
              env = {
                api_key = vim.fn.system('cat /home/laeborg/.config/nvim/lua/custom/anthropic_key.txt'):gsub('\n', ''),
              },
            })
          end,
        },
      }
    end,
  },
}
