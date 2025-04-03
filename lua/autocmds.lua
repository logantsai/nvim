-- Define a function to clear trailing spaces
local function trim_tail_sp()
  -- Use Neovim API to perform a global substitute command to remove trailing spaces
  vim.api.nvim_command("%s/\\s\\+$//e")
end

-- Register the function as a user command for convenience
vim.api.nvim_create_user_command("TrimTailSp", trim_tail_sp, {})

-- Auto highlight syntax
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = "*",
    callback = function()
        if vim.fn.getline(1):match("^#!.*\\b(sh|bash|zsh|ksh)") then
            vim.bo.filetype = "sh"
        end
    end,
})

-- Define highlight color for trailing whitespace (only needs to be defined once)
vim.cmd [[
  highlight ExtraWhitespace ctermbg=235 guibg=#6b6b6b guifg=#ffffff
]]

-- Automatically add match pattern when entering a buffer window
vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = "*",
  callback = function()
    vim.cmd [[match ExtraWhitespace /\s\+$/]]
  end
})
