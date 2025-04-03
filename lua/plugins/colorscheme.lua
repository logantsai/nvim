return {
  -- colorscheme
  {
    "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {},
    init = function()
      -- vim.cmd.colorscheme "tokyonight-night"
      vim.cmd.colorscheme "tokyonight-moon"
    end,
  },

  {
    "catppuccin/nvim", name = "catppuccin", priority = 1000,
    init = function()
      -- vim.cmd.colorscheme "catppuccin-mocha"
      -- vim.cmd.colorscheme "catppuccin"
    end,
  },

  {
    "projekt0n/github-nvim-theme", lazy = false, priority = 1000, opts = {},
    config = function()
      require('github-theme').setup({})
    end,
  },

  {
    "sainnhe/sonokai",
  },

  { "EdenEast/nightfox.nvim", opts = {},
    init = function()
      -- vim.cmd.colorscheme "nightfox"
    end,
  },

  { "navarasu/onedark.nvim", opts = {},
    init = function()
      -- vim.cmd.colorscheme "onedark"
    end,
  },

  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      -- vim.cmd.colorscheme('gruvbox-material')
    end
  },
}
