local opt = vim.opt

----- Personal Preferences -----
opt.number = true
opt.relativenumber = true

opt.wrap = false

opt.scrolloff = 3

opt.sidescrolloff = 5
opt.cursorline = true
opt.colorcolumn = "80"

opt.splitbelow = true
opt.splitright = true

opt.signcolumn = "yes"
opt.shada = { "'10", "<0", "s10", "h" }

opt.clipboard = "unnamedplus" 

-- Define a function to clear trailing spaces
local function trim_tail_sp()
  -- Use Neovim API to perform a global substitute command to remove trailing spaces
  vim.api.nvim_command("%s/\\s\\+$//e")
end

-- Register the function as a user command for convenience
vim.api.nvim_create_user_command("TrimTailSp", trim_tail_sp, {})

-- Define a syntax group for trailing spaces with a custom background color
-- vim.cmd([[highlight TrailingSpaces guibg=#ff0000]])

-- Match trailing spaces and apply the TrailingSpaces highlighting
-- vim.cmd([[match TrailingSpaces /\s\+$/]])
