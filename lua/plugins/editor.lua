return {
  -- 編輯器增強插件
  {
    "folke/todo-comments.nvim",
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false }
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
    config = true
  },

  {
    "echasnovski/mini.nvim",
    config = function()
      require("mini.indentscope").setup({})
      require("mini.tabline").setup({})
      require("mini.cursorword").setup({})

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
      end
      map('n', ']b', '<Cmd>tabNext<CR>', "Next Tab")
      map('n', '[b', '<Cmd>tabprevious<CR>', "Prev Tab")
    end,
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    opts = {},
  },

  {
    "nvim-zh/colorful-winsep.nvim",
    config = true,
    event = { "WinLeave" },
  },
}

