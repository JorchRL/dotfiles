return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {}
    vim.keymap.set('n', '<leader>nt', function()
      require('neo-tree.command').execute { toggle = true, dir = vim.uv.cwd() }
    end, { desc = 'Toggle file tree' })
    vim.keymap.set('n', '<leader>nf', '<cmd>NeoTreeFind<cr>')
  end,
}
