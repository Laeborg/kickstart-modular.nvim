return {
  'nvim-neo-tree/neo-tree.nvim',
  keys = {
    { '<leader>fe', '<cmd>Neotree toggle<cr>', desc = 'NeoTree' },
  },
  opts = {
    sources = { 'filesystem', 'buffers', 'git_status' },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_hidden = false,
      },
    },
    window = {
      position = 'left',
      width = 30,
    },
  },
  init = function()
    vim.api.nvim_create_autocmd('VimEnter', {
      callback = function()
        require('neo-tree.command').execute { toggle = true }
      end,
    })
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
}
