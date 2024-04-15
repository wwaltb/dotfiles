vim.g.mapleader = " "

-- Lazy plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
   })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins", {
   change_detection = {
      enabled = true,
      notify = false,
   },
})

-- Keymappings
require("wb.mappings")

-- Indents
vim.cmd("set expandtab")
vim.cmd("set tabstop=3")
vim.cmd("set softtabstop=3")
vim.cmd("set shiftwidth=3")

-- Numbers
vim.cmd("set number")
vim.cmd("set relativenumber")

-- Searching
vim.cmd("set wildmenu")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set hlsearch")
vim.cmd("set incsearch")
