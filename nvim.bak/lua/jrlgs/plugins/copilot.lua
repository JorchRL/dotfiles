return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      suggestion = {
        auto_trigger = true,
      },
    }
    local suggestion = require 'copilot.suggestion'
    -- add <M-w> mapping to accept word suggestion
    vim.keymap.set('i', '<M-w>', suggestion.accept_word, { desc = 'accept word suggestion' })
    -- add <M-W> mapping to accept line suggestion
    vim.keymap.set('i', '<M-W>', suggestion.accept_line, { desc = 'accept line suggestion' })
  end,
}
