return {
  -- colorscheme
  {
    "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {},
    init = function()
      -- vim.cmd.colorscheme "tokyonight-night"
    end,
  },

  { "catppuccin/nvim", name = "catppuccin", priority = 1000,
    init = function()
      vim.cmd.colorscheme "catppuccin-mocha"
    end,
  },

  -- editor

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
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    opts = {},
  },

  {
    "ntpeters/vim-better-whitespace",
    init = function()
      vim.g.better_whitespace_enabled = true
      vim.g.better_whitespace_ctermcolor = 'white'
      vim.g.better_whitespace_guicolor = 'white'
      -- vim.g.better_whitespace_guicolor = '#cc241d' -- red
      vim.g.strip_whitespace_on_save = false
      vim.g.strip_whitespace_confirm = false
    end,
  },

  -- outline
  {
    "preservim/tagbar",
    keys = {
      { "<leader>tt", "<cmd>TagbarToggle<cr>", desc = "TagbarToggle" },
    },
  },

  -- git integrate

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
        local gitsigns = require 'gitsigns'

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal { ']c', bang = true }
          else
            gitsigns.nav_hunk 'next'
          end
        end, { desc = 'Jump to next git [c]hange' })

        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal { '[c', bang = true }
          else
            gitsigns.nav_hunk 'prev'
          end
        end, { desc = 'Jump to previous git [c]hange' })
      end,
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {},
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "html", "cmake", "bash", "bitbake" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = false },
        })
    end
  },

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
      local map = vim.keymap.set
      map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
      map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
    end,
  },
}

