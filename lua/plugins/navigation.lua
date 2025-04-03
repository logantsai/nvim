return {
  -- 導航與搜索相關插件
  {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
      require('telescope').setup{
        pickers = { colorscheme = { enable_preview = true } },
      }

      local map = vim.keymap.set
      map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
      map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
    end,
  },

  -- outline
  {
    "preservim/tagbar",
    keys = {
      { "<leader>tt", "<cmd>TagbarToggle<cr>", desc = "TagbarToggle" },
    },
  },
}

