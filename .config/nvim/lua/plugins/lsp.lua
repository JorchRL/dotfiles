return {
  -- {
  --   "artemave/workspace-diagnostics.nvim",
  --   event = "LspAttach",
  --   opts = {
  --     workspace_files = function()
  --       local all_files = vim.fn.split(vim.fn.system("git ls-files"), "\n")
  --       local ts_files = {}
  --       for _, file in ipairs(all_files) do
  --         if file:match("%.tsx?$") then -- Matches both .ts and .tsx files
  --           table.insert(ts_files, file)
  --         end
  --       end
  --       -- print("Setup ws files!")
  --       -- vim.print(ts_files)
  --       return ts_files
  --     end,
  --   },
  -- },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ts_ls = {
          enabled = false,
        },
      },
      inlay_hints = {
        enabled = false,
      },
    },
  },
  --
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = function(_, opts)
  --     -- add tsx and treesitter
  --     vim.list_extend(opts.ensure_installed, {
  --       "glsl",
  --     })
  --   end,
  -- },
}
