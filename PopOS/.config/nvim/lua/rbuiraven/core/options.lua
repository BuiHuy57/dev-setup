local opt = vim.opt

opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = true

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.signcolumn = "yes"

opt.clipboard:append("unnamedplus")

opt.splitright =true
opt.splitbelow = true

opt.iskeyword:append("-")
