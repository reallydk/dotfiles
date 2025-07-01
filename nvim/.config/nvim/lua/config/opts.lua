-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- UI behavior
vim.opt.mouse = "a"
vim.opt.scrolloff = 10
vim.opt.signcolumn = "no"
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.breakindent = true

vim.opt.fillchars:append({ eob = " " })

-- Tabs & indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

-- File behavior
vim.opt.confirm = true
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.cmdheight = 0

-- time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
