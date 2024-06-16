local opt = vim.opt

----- Personal Preferences -----

-- line number
opt.number = true
opt.relativenumber = true

opt.wrap = false

-- scroll
opt.scrolloff = 3
opt.sidescrolloff = 5

-- highlight
opt.cursorline = true
opt.colorcolumn = "80"

opt.splitbelow = true
opt.splitright = true

-- opt.signcolumn = "yes"
-- opt.shada = { "'10", "<0", "s10", "h" }

-- clipobard
opt.clipboard = "unnamedplus"

-- Indenting
opt.expandtab = true    -- uses spaces instead of tab characters
opt.shiftwidth = 4      -- the number of spaces used for indentation operations
opt.smartindent = true  -- makes the Tab key behave differently at the beginning of a line
opt.tabstop = 4         -- the width of a tab character displayed
opt.softtabstop = 4
