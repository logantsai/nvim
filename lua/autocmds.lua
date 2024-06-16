-- Define a function to clear trailing spaces
local function trim_tail_sp()
  -- Use Neovim API to perform a global substitute command to remove trailing spaces
  vim.api.nvim_command("%s/\\s\\+$//e")
end

-- Register the function as a user command for convenience
vim.api.nvim_create_user_command("TrimTailSp", trim_tail_sp, {})
