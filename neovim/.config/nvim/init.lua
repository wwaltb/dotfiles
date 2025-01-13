vim.g.mapleader = " "

-- lazy plugins
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

-- keymappings
require("wb.mappings")

-- float borders
require("wb.borders")

-- vim settings
require("wb.settings")
vim.cmd("colorscheme kaleidobones")
