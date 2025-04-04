return {
  -- 程式碼分析相關插件
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "html", "cmake", "bash", "bitbake", "devicetree" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = false },
        })
    end
  },

  {
    "dhananjaylatkar/cscope_maps.nvim",
    dependencies = {
    },
    opts = {
      -- maps related defaults
      disable_maps = false, -- "true" disables default keymaps
      skip_input_prompt = false, -- "true" doesn't ask for input
      prefix = "<leader>c", -- prefix to trigger maps

      -- cscope related defaults
      cscope = {
        -- location of cscope db file
        db_file = "./cscope.out", -- DB or table of DBs
                                  -- NOTE:
                                  --   when table of DBs is provided -
                                  --   first DB is "primary" and others are "secondary"
                                  --   primary DB is used for build and project_rooter
        -- cscope executable
        exec = "cscope", -- "cscope" or "gtags-cscope"
        -- choose your fav picker
        picker = "telescope", -- "quickfix", "telescope", "fzf-lua", "mini-pick" or "snacks"
        -- size of quickfix window
        qf_window_size = 5, -- any positive integer
        -- position of quickfix window
        qf_window_pos = "bottom", -- "bottom", "right", "left" or "top"
        -- "true" does not open picker for single result, just JUMP
        skip_picker_for_single_result = false, -- "false" or "true"
        -- custom script can be used for db build
        db_build_cmd = { script = "default", args = { "-bqkv" } },
        -- statusline indicator, default is cscope executable
        statusline_indicator = nil,
        -- try to locate db_file in parent dir(s)
        project_rooter = {
          enable = false, -- "true" or "false"
          -- change cwd to where db_file is located
          change_cwd = false, -- "true" or "false"
        },
      },

      -- stack view defaults
      stack_view = {
        tree_hl = true, -- toggle tree highlighting
      }
    },
  },
}

