return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    -- -- Keybindings
    -- vim.keymap.set('n', '<leader>a', function()
    --   harpoon:list():append()
    -- end)
    -- vim.keymap.set('n', '<C-e>', function()
    --   harpoon.ui:toggle_quick_menu(harpoon:list())
    -- end)

    -- -- Nav til filer
    -- vim.keymap.set('n', '<C-h>', function()
    --   harpoon:list():select(1)
    -- end)
    -- vim.keymap.set('n', '<C-j>', function()
    --   harpoon:list():select(2)
    -- end)
    -- vim.keymap.set('n', '<C-k>', function()
    --   harpoon:list():select(3)
    -- end)
    -- vim.keymap.set('n', '<C-l>', function()
    --   harpoon:list():select(4)
    -- end)

    --     -- Toggle prev/next
    --     vim.keymap.set('n', '<C-S-P>', function()
    --       harpoon:list():prev()
    --     end)
    --     vim.keymap.set('n', '<C-S-N>', function()
    --       harpoon:list():next()
    --     end)
  end,
}
