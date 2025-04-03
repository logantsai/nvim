--[[
-- Setup initial configuration,
--
-- Primarily just download and execute lazy.nvim
--]]

-- leader!!!
vim.g.mapleader = " "

-- Define the path where lazy.nvim will be installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- Check if lazy.nvim is already installed
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  -- If not installed, clone the lazy.nvim repository
  -- Using --filter=blob:none for faster cloning by excluding blob objects
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

-- Add lazy to the `runtimepath`, this allows us to `require` it.
---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("keymaps")
require("options")
require("autocmds")

require("lazy").setup({
  -- loads all plugin under plugins/
  spec = {
    { import = "plugins" },
  },

  -- plugins are not lazy loaded by default
  defaults = { lazy = false, },
  change_detection = { nofity = false, },
})
