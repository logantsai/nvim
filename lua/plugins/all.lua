return {
  {
    "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {},
    init = function()
      -- vim.cmd.colorscheme "tokyonight-night"
    end,
  },

  { "catppuccin/nvim", name = "catppuccin", priority = 1000,
    init = function()
      vim.cmd.colorscheme "catppuccin"
    end,
  },

  { "folke/todo-comments.nvim",
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false }
  },

  {
    "windwp/nvim-autopairs", event = "InsertEnter", opts = {}, config = true
  },

  {
    "echasnovski/mini.nvim",
    config = function()
      require("mini.trailspace").setup({}) -- highlight and remove trailing spaces
      require("mini.indentscope").setup({})
      require("mini.tabline").setup({})

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
      end
      map('n', ']b', '<Cmd>tabNext<CR>', "Next Tab")
      map('n', '[b', '<Cmd>tabprevious<CR>', "Prev Tab")
    end,
  },

  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      on_attach = function(buffer)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
        end

        -- stylua: ignore start
        map("n", "]c", function() gs.nav_hunk("next") end, "Next Hunk")
        map("n", "[c", function() gs.nav_hunk("prev") end, "Prev Hunk")
      end,
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {},
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    opts = {},
  },

}

