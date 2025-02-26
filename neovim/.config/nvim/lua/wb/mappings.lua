-- navigating with telescope
local minipick = require("mini.pick")
local miniextra = require("mini.extra")

vim.keymap.set("n", "<leader>ff", minipick.builtin.files, {})
vim.keymap.set("n", "<leader>fg", minipick.builtin.grep_live, {})
vim.keymap.set("n", "<leader>fb", minipick.builtin.buffers, {})
-- vim.keymap.set("n", "<leader>fs", miniextra.pickers.lsp, {})
vim.keymap.set("n", "<leader>fh", minipick.builtin.help, {})
vim.keymap.set("n", "<leader>fr", miniextra.pickers.oldfiles, {})
--vim.keymap.set("n", "<leader>fw", minipick.builtin.grep_string, {})
--vim.keymap.set("n", "<leader>gf", minipick.builtin.git_files, {})

-- navigating the file system
local minifile = require("mini.files")
vim.keymap.set("n", "<C-s>", minifile.open, {})

-- navigating with the harpoon man
local harpoon = require("harpoon")

vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>ht", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<leader>hd", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>hf", function() harpoon:list():next() end)
vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<leader>h5", function() harpoon:list():select(5) end)
vim.keymap.set("n", "<leader>h6", function() harpoon:list():select(6) end)
vim.keymap.set("n", "<leader>h7", function() harpoon:list():select(7) end)
vim.keymap.set("n", "<leader>h8", function() harpoon:list():select(8) end)
vim.keymap.set("n", "<leader>h9", function() harpoon:list():select(9) end)

-- lsp
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, {})

-- git
local minidiff = require("mini.diff")
vim.keymap.set("n", "<leader>gh", minidiff.toggle_overlay, {})

-- zen mode
local snacks = require("snacks")
vim.keymap.set("n", "<leader>z", function() snacks.zen() end)

-- pandoc
local run_pandoc = require("run-pandoc")
vim.keymap.set("n", "<leader>cp", run_pandoc.compile, {})

-- browser-like ctags
vim.keymap.set("n", "H", "<C-t>", {})
vim.keymap.set("n", "L", "<C-]>", {})
